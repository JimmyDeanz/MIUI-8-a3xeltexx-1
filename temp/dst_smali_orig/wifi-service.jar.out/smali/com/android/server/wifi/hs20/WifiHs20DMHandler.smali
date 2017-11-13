.class public Lcom/android/server/wifi/hs20/WifiHs20DMHandler;
.super Ljava/lang/Object;
.source "WifiHs20DMHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20DMHandler$CredDetails;,
        Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    }
.end annotation


# static fields
.field private static final AAA_SERVER_TRUSTROOT_TYPE:I = 0x5

.field private static final BACKHAUL_BANDWITDH_THRESHOLD_TYPE:I = 0x3

.field private static final COMMAND:Ljava/lang/String; = "command"

.field private static final CREDENTIAL_TYPE:I = 0x7

.field private static final DBG:Z = false

.field private static final DEVDETAILS_EAP_TYPE:I = 0xa

.field private static final DEVDETAILS_TYPE:I = 0x9

.field private static final DEV_DETAIL_SPCERTIFICATE_TYPE:I = 0x12

.field private static final DYNAMIC_NODE:I = 0x1

.field private static final EXEC_DATA:Ljava/lang/String; = "execData"

.field private static final FQDN_TYPE:I = 0x13

.field private static final HOMEOI_LIST:I = 0x8

.field private static final HOMESP:Ljava/lang/String; = "HOMESP_"

.field private static final HOMESP_NETWORK_TYPE:I = 0x6

.field private static final HOTSPOT_ADD_MO_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_ADD_MO"

.field public static final HOTSPOT_END_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_END_SESSION"

.field public static final HOTSPOT_EXEC_COMMAND:Ljava/lang/String; = "com.samsung.action.HOTSPOT_EXEC_COMMAND"

.field public static final HOTSPOT_START_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_START_SESSION"

.field private static final HOTSPOT_TYPE:I = 0x0

.field private static final HOTSPOT_UPDATE_MO_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_UPDATE_MO"

.field private static final NON_DYNAMIC_NODE:I = -0x1

.field private static final OTHER_HOME_PARTNER_TYPE:I = 0x11

.field private static final POLICY_SUBSCRIPTION_TYPE:I = 0x1

.field private static final PREFERRED_ROAMING_PARTNER_TYPE:I = 0x2

.field private static final SIMEAPTYPE:Ljava/lang/String; = "SIM_"

.field private static final SP_EXLUSION_TYPE:I = 0x10

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "HotspotDMHandler"

.field private static final TUPPLE_TYPE:I = 0x4

.field private static cr:Landroid/content/ContentResolver;


# instance fields
.field private DEFAULT_LENGTH:I

.field public credID:I

.field public mContext:Landroid/content/Context;

.field mHs20CertificateManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

.field public modifyMO:Z

.field private typeOfNode:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->credID:I

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20Helper;->buildHashMap()V

    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mHs20CertificateManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    return-void
.end method

.method private deleteFromRelatedTables(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "tableType"    # I
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const-string v0, "HotspotDMHandler"

    const-string v1, "-----------deleteFromRelatedTables --------------- "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method private getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;
    .locals 12
    .param p1, "credentialID"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    const-string v0, "HotspotDMHandler"

    const-string v1, "Check in credential Node"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "dbCur":Landroid/database/Cursor;
    const-string v3, "credential_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_0
    const-string v0, "HotspotDMHandler"

    const-string v1, "Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v10

    :cond_3
    :goto_0
    return-object v7

    :cond_4
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v11, :cond_6

    const-string v0, "HotspotDMHandler"

    const-string v1, "More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v10

    goto :goto_0

    :cond_6
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v7, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v7}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V

    .local v7, "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    const-string v0, "username"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    const-string v0, "password"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    iget-object v0, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    if-eqz v0, :cond_7

    const-string v0, "HotspotDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromCredentialNode ---->Username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Password :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v5, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    const/4 v11, 0x0

    invoke-static {v5, v11}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .end local v6    # "count":I
    .end local v7    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v7, v10

    goto/16 :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "ppsmoID"    # Ljava/lang/String;

    .prologue
    const-string v4, "fqdn=? AND ppsmo_id=?"

    .local v4, "selection":Ljava/lang/String;
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotspotID : fqdn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PPSMO ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v1, 0x1

    aput-object p2, v5, v1

    const/4 v11, 0x0

    .local v11, "id":I
    const/4 v8, 0x0

    .local v8, "cr":Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, "hotspotID":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .local v7, "count":I
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .local v14, "values":Landroid/content/ContentValues;
    if-nez v7, :cond_4

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->checknDelete(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .local v12, "updateIdentifier":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_0

    const-string v1, "update_identifier"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "fqdn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ppsmo_id"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .local v13, "uri":Landroid/net/Uri;
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotspotID : Hotspot ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .end local v13    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v7    # "count":I
    .end local v12    # "updateIdentifier":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    move-object v1, v10

    :cond_3
    :goto_2
    return-object v1

    .restart local v7    # "count":I
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v1, 0x1

    if-ne v7, v1, :cond_5

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "hotspot_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->checknDelete(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .restart local v12    # "updateIdentifier":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_1

    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    const-string v1, "update_identifier"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v7    # "count":I
    .end local v12    # "updateIdentifier":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FQDN exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "count":I
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_3
    const-string v1, "HotspotDMHandler"

    const-string v2, "More than one entry exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "count":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private getTableURI(I)Landroid/net/Uri;
    .locals 1
    .param p1, "tableType"    # I

    .prologue
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_8
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_9
    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetails;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_b

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_b
    const/16 v0, 0x12

    if-ne p1, v0, :cond_c

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsSPCertificate;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_c
    const/16 v0, 0x10

    if-ne p1, v0, :cond_d

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_d
    const/16 v0, 0x11

    if-ne p1, v0, :cond_e

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_e
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseDevDetail(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "dbParam"    # Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x4

    const/4 v10, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "uri_indexed":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "list":[Ljava/lang/String;
    if-nez v4, :cond_1

    const-string v6, "HotspotDMHandler"

    const-string v7, "++++++++++++++++++++ invalid string \'/\' not found "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .end local v2    # "index":I
    .end local v4    # "list":[Ljava/lang/String;
    .end local v5    # "uri_indexed":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .restart local v2    # "index":I
    .restart local v4    # "list":[Ljava/lang/String;
    .restart local v5    # "uri_indexed":Ljava/lang/String;
    :cond_1
    array-length v3, v4

    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    const-string v7, "HotspotDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "List Argument "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lt v3, v11, :cond_0

    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "DevDetail"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    aget-object v7, v4, v7

    const-string v8, "Wi-Fi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v3, v11, :cond_3

    const/16 v7, 0x9

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, 0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "dev_details_id"

    aput-object v8, v7, v2

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "len":I
    .end local v4    # "list":[Ljava/lang/String;
    .end local v5    # "uri_indexed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "len":I
    .restart local v4    # "list":[Ljava/lang/String;
    .restart local v5    # "uri_indexed":Ljava/lang/String;
    :cond_3
    if-lt v3, v10, :cond_5

    const/4 v7, 0x4

    :try_start_1
    aget-object v7, v4, v7

    const-string v8, "EAPMethodList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v3, v12, :cond_4

    const/16 v7, 0xa

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, 0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "eap_id"

    aput-object v8, v7, v2

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x7

    if-ne v3, v7, :cond_0

    const/16 v7, 0xa

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v7, v4, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "eap_id"

    aput-object v8, v7, v2

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    :cond_5
    if-lt v3, v10, :cond_7

    const/4 v7, 0x4

    aget-object v7, v4, v7

    const-string v8, "SPCertificate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-ne v3, v12, :cond_6

    const/16 v7, 0x12

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, 0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "sp_id"

    aput-object v8, v7, v2

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x7

    if-ne v3, v7, :cond_0

    const/16 v7, 0x12

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v7, v4, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "sp_id"

    aput-object v8, v7, v2

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    :cond_7
    if-lt v3, v10, :cond_8

    const/4 v7, 0x4

    aget-object v7, v4, v7

    const-string v8, "Ops"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-ne v3, v12, :cond_0

    const/16 v7, 0x9

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v7, v4, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "dev_details_id"

    aput-object v8, v7, v2

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    :cond_8
    if-ne v3, v10, :cond_0

    const/16 v7, 0x9

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v4, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "dev_details_id"

    aput-object v8, v7, v2

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v7, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z
    .locals 13
    .param p1, "nodeURI"    # Ljava/lang/String;
    .param p2, "dbParam"    # Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v1, 0x0

    .local v1, "index":I
    const-string v7, "DevDetail"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseDevDetail(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v6

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "uri_indexed":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "list":[Ljava/lang/String;
    if-nez v3, :cond_4

    const-string v6, "HotspotDMHandler"

    const-string v7, "++++++++++++++++++++ invalid string \'/\' not found "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    array-length v2, v3

    .local v2, "len":I
    if-ne v2, v6, :cond_5

    const/4 v7, 0x0

    aget-object v7, v3, v7

    const-string v8, "Wi-Fi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    goto :goto_0

    :cond_5
    if-ne v2, v12, :cond_6

    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "fqdn"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v6

    aput-object v8, v7, v1

    goto :goto_0

    :cond_6
    const/4 v7, 0x4

    if-ne v2, v7, :cond_7

    aget-object v7, v3, v10

    const-string v8, "UpdateIdentifier"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v10

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "fqdn"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    :cond_7
    if-ne v2, v10, :cond_8

    aget-object v7, v3, v12

    const-string v8, "PerProviderSubscription"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v12

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "fqdn"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x4

    if-ne v2, v7, :cond_a

    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->checknDelete(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .local v4, "ret":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_9

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    :goto_1
    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "fqdn"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v6

    aput-object v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "ppsmo_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v10

    aput-object v8, v7, v1

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "update_identifier"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    goto/16 :goto_0

    :cond_9
    new-array v7, v10, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    goto :goto_1

    .end local v4    # "ret":I
    :cond_a
    if-le v2, v9, :cond_1a

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "Policy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    aget-object v7, v3, v9

    const-string v8, "PreferredRoamingPartnerList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-ne v2, v11, :cond_b

    iput v12, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x7

    if-ne v2, v7, :cond_c

    iput v12, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_roaming_partner_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_c
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    iput v12, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_roaming_partner_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_d
    aget-object v7, v3, v9

    const-string v8, "MinBackhaulThreshold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    if-ne v2, v11, :cond_e

    iput v10, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_e
    const/4 v7, 0x7

    if-ne v2, v7, :cond_f

    iput v10, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_backhaul_threshold_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_f
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    iput v10, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_backhaul_threshold_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_10
    aget-object v7, v3, v9

    const-string v8, "PolicyUpdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x7

    if-ne v2, v7, :cond_11

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "type_of_node"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_11
    const/16 v7, 0x8

    if-ne v2, v7, :cond_12

    aget-object v7, v3, v11

    const-string v8, "TrustRoot"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_12
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    aget-object v7, v3, v11

    const-string v8, "UsernamePassword"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_13
    aget-object v7, v3, v9

    const-string v8, "SPExclusionList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    if-ne v2, v11, :cond_14

    const/16 v7, 0x10

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_14
    const/4 v7, 0x7

    if-ne v2, v7, :cond_15

    const/16 v7, 0x10

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_spexclusion_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_15
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    const/4 v7, 0x4

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_spexclusion_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_16
    aget-object v7, v3, v9

    const-string v8, "RequiredProtoPortTuple"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    if-ne v2, v11, :cond_17

    const/4 v7, 0x4

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v10

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x7

    if-ne v2, v7, :cond_18

    const/4 v7, 0x4

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_tupple_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_18
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    const/4 v7, 0x4

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "tupple_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_19
    aget-object v7, v3, v9

    const-string v8, "MaximumBSSLoadValue"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1a
    if-ne v2, v9, :cond_1b

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "CredentialPriority"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1b
    if-le v2, v9, :cond_1d

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "SubscriptionRemediation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    if-ne v2, v11, :cond_1c

    aget-object v7, v3, v9

    const-string v8, "URI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1c
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1d
    if-lt v2, v9, :cond_20

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "AAAServerTrustRoot"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    if-ne v2, v9, :cond_1e

    iput v9, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1e
    if-ne v2, v11, :cond_1f

    iput v9, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_trustroot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v9

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1f
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    iput v9, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_trustroot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v9

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_20
    if-le v2, v9, :cond_23

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "SubscriptionUpdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    const-string v7, "HotspotDMHandler"

    const-string v8, "Inside Subscription Update"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v11, :cond_21

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "type_of_node"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    aget-object v8, v8, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_21
    const/4 v7, 0x7

    if-ne v2, v7, :cond_22

    aget-object v7, v3, v9

    const-string v8, "TrustRoot"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v7, "HotspotDMHandler"

    const-string v8, "Inside TrustRoot"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "type_of_node"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    aget-object v8, v8, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_22
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    aget-object v7, v3, v9

    const-string v8, "UsernamePassword"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "type_of_node"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    aget-object v8, v8, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_23
    if-le v2, v9, :cond_31

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "HomeSP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    aget-object v7, v3, v9

    const-string v8, "NetworkID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    if-ne v2, v11, :cond_24

    iput v11, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_24
    const/4 v7, 0x7

    if-ne v2, v7, :cond_25

    iput v11, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_network_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_25
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    iput v11, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    const-string v8, "SSID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HOMESP_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    :goto_2
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_network_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_26
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    goto :goto_2

    :cond_27
    if-ne v2, v11, :cond_28

    aget-object v7, v3, v9

    const-string v8, "FriendlyName"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_28
    if-ne v2, v11, :cond_29

    aget-object v7, v3, v9

    const-string v8, "IconURL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_29
    if-ne v2, v11, :cond_2a

    aget-object v7, v3, v9

    const-string v8, "FQDN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2a
    if-ne v2, v11, :cond_2b

    aget-object v7, v3, v9

    const-string v8, "RoamingConsortiumOI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2b
    aget-object v7, v3, v9

    const-string v8, "HomeOIList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    if-ne v2, v11, :cond_2c

    const/16 v7, 0x8

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2c
    const/4 v7, 0x7

    if-ne v2, v7, :cond_2d

    const/16 v7, 0x8

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_homeoilist_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2d
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    const/16 v7, 0x8

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_homeoilist_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2e
    aget-object v7, v3, v9

    const-string v8, "OtherHomePartners"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-ne v2, v11, :cond_2f

    const/16 v7, 0x11

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2f
    const/4 v7, 0x7

    if-ne v2, v7, :cond_30

    const/16 v7, 0x11

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_otherhome_network_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_30
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    const/16 v7, 0x11

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_otherhome_network_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_31
    if-le v2, v9, :cond_33

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "SubscriptionParameters"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    if-lt v2, v11, :cond_32

    aget-object v7, v3, v9

    const-string v8, "UsageLimits"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_32
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_33
    if-lt v2, v9, :cond_3b

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "Credential"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    if-ne v2, v11, :cond_35

    aget-object v7, v3, v9

    const-string v8, "CreationDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    aget-object v7, v3, v9

    const-string v8, "ExpirationDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    aget-object v7, v3, v9

    const-string v8, "Realm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    aget-object v7, v3, v9

    const-string v8, "checkAAAServerCertStatus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    :cond_34
    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_35
    const/4 v7, 0x7

    if-lt v2, v7, :cond_38

    aget-object v7, v3, v9

    const-string v8, "UsernamePassword"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    const/4 v7, 0x7

    if-ne v2, v7, :cond_37

    aget-object v7, v3, v11

    const-string v8, "Username"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    aget-object v7, v3, v11

    const-string v8, "Password"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    aget-object v7, v3, v11

    const-string v8, "MachineManaged"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    aget-object v7, v3, v11

    const-string v8, "SoftTokenApp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    aget-object v7, v3, v11

    const-string v8, "AbleToShare"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    :cond_36
    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_37
    const/4 v7, 0x7

    if-le v2, v7, :cond_1

    aget-object v7, v3, v11

    const-string v8, "EAPMethod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_38
    if-lt v2, v11, :cond_39

    aget-object v7, v3, v9

    const-string v8, "DigitalCertificate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_39
    if-lt v2, v11, :cond_1

    aget-object v7, v3, v9

    const-string v8, "SIM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "EAPType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    :goto_3
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_3a
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    goto :goto_3

    :cond_3b
    if-ne v2, v9, :cond_1

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "Extension"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public addDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 20
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .local v13, "nodeURI":Ljava/lang/String;
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " nodeURI is   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .local v8, "addcur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "count":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    const-string v2, "HotspotDMHandler"

    const-string v4, "Field Name Node !!! Return Nothing to be added  "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .local v12, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.action.HOTSPOT_ADD_MO"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v12    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct {v14}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .local v14, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v15

    .local v15, "ret":Z
    if-nez v15, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v3

    .local v3, "tableURI":Landroid/net/Uri;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .local v17, "stbuilder":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "flag":Z
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v2, :cond_6

    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v2, v2

    if-ge v11, v2, :cond_7

    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    if-eqz v2, :cond_4

    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    if-nez v10, :cond_5

    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    const-string v2, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v11    # "i":I
    :cond_6
    const-string v2, "HotspotDMHandler"

    const-string v4, "Parse failure. Not a valid URI"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    .restart local v11    # "i":I
    :cond_7
    const/4 v5, 0x0

    .local v5, "selection":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_8
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v9, v2

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count  got from the DB"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    iget v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    if-lez v9, :cond_9

    const-string v2, "HotspotDMHandler"

    const-string v4, "The node already exists"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .local v19, "values":Landroid/content/ContentValues;
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    array-length v9, v2

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_a

    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v4, v4, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentValues being added for selection  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND selection Argument"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_a
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .local v18, "uri":Landroid/net/Uri;
    if-nez v18, :cond_b

    const-string v2, "HotspotDMHandler"

    const-string v4, "Unable to insert"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insertion successful:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_c
    if-nez v5, :cond_d

    const/4 v2, 0x0

    iput-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    :cond_d
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .restart local v19    # "values":Landroid/content/ContentValues;
    if-nez v9, :cond_10

    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v9, v2

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v9, :cond_e

    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v4, v4, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentValues being added for selection  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND selection Argument"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_e
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .restart local v18    # "uri":Landroid/net/Uri;
    if-nez v18, :cond_f

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insertion successful:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v18    # "uri":Landroid/net/Uri;
    :cond_10
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Param Name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-nez v2, :cond_12

    const-string v4, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Int "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v7, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_11
    :goto_5
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .local v16, "retValue":I
    if-nez v16, :cond_17

    const-string v2, "HotspotDMHandler"

    const-string v4, "Rows is not updated"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v16    # "retValue":I
    :cond_12
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_14

    const-string v4, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Bool "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v7, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_13
    const/4 v4, 0x0

    goto :goto_6

    :cond_14
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_15

    const-string v4, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Bin "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v7, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_16

    const-string v4, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Char "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v7, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_11

    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Node !!! "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_0

    .restart local v16    # "retValue":I
    :cond_17
    const-string v2, "HotspotDMHandler"

    const-string v4, "Rows got updated"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public checknDelete(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "ppsmoID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v3, "fqdn=?"

    .local v3, "selection":Ljava/lang/String;
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    new-array v4, v0, [Ljava/lang/String;

    .local v4, "selectionArgs":[Ljava/lang/String;
    aput-object p1, v4, v1

    const/4 v10, 0x0

    .local v10, "id":I
    const/4 v8, 0x0

    .local v8, "dbPpsmoID":Ljava/lang/String;
    const/4 v11, -0x1

    .local v11, "updateIdenfier":I
    const/4 v7, 0x0

    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    const-string v0, "HotspotDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checknDelete :count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v6, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v0, "ppsmo_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "HotspotDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checknDelete :PPSMO ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_0

    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v3, "hotspot_id=?"

    const/4 v0, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v11

    .end local v6    # "count":I
    .end local v11    # "updateIdenfier":I
    .local v12, "updateIdenfier":I
    :goto_0
    return v12

    .end local v12    # "updateIdenfier":I
    .restart local v11    # "updateIdenfier":I
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "HotspotDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .end local v11    # "updateIdenfier":I
    .restart local v12    # "updateIdenfier":I
    goto :goto_0
.end method

.method public deleteDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 23
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    if-nez p1, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return v10

    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    .local v17, "nodeURI":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "deleteCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "count":I
    new-instance v18, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .local v18, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v19

    .local v19, "ret":Z
    if-nez v19, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .local v15, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.action.HOTSPOT_UPDATE_MO"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v15    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .local v20, "stbuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v3, :cond_5

    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v3, v3

    if-ge v14, v3, :cond_6

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v3, v3, v14

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v14, v3, :cond_4

    const-string v3, "=? AND "

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    const-string v3, "=?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v9    # "count":I
    .end local v12    # "deleteCursor":Landroid/database/Cursor;
    .end local v14    # "i":I
    .end local v17    # "nodeURI":Ljava/lang/String;
    .end local v18    # "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    .end local v19    # "ret":Z
    .end local v20    # "stbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v10, 0x0

    goto :goto_0

    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v9    # "count":I
    .restart local v12    # "deleteCursor":Landroid/database/Cursor;
    .restart local v17    # "nodeURI":Ljava/lang/String;
    .restart local v18    # "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    .restart local v19    # "ret":Z
    .restart local v20    # "stbuilder":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_1
    const-string v3, "HotspotDMHandler"

    const-string v5, "Parse failure. Not a valid URI "

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    .restart local v14    # "i":I
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "selection":Ljava/lang/String;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v4

    .local v4, "tableURI":Landroid/net/Uri;
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_c

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .local v22, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-eqz v3, :cond_8

    move-object/from16 v0, p1

    iget v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    :cond_8
    const/16 v16, -0x1

    .local v16, "invalidEntry":I
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .end local v16    # "invalidEntry":I
    :goto_3
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0, v6, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    .local v21, "updateCount":I
    if-nez v21, :cond_b

    const-string v3, "HotspotDMHandler"

    const-string v5, "Update failed --- Delete root node value"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v21    # "updateCount":I
    :cond_9
    move-object/from16 v0, p1

    iget v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_a

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .restart local v21    # "updateCount":I
    :cond_b
    const-string v3, "HotspotDMHandler"

    const-string v5, "Update SUCCESS --- Delete root node value"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v21    # "updateCount":I
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_c
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .local v11, "deleteCount":I
    if-nez v11, :cond_d

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v10, 0x0

    .local v10, "crossEntry":Z
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    if-nez v3, :cond_0

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v5}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->deleteFromRelatedTables(ILjava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto/16 :goto_0
.end method

.method public endSession(I)Z
    .locals 2
    .param p1, "status"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.action.HOTSPOT_END_SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    const/4 v1, 0x1

    return v1
.end method

.method public exec(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 4
    .param p1, "param"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.action.HOTSPOT_EXEC_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    iget-object v2, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "execData"

    iget-object v2, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->execData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prashant :  param.command."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->command:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "param.execData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->execData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public getCredentials(IILjava/lang/String;)Landroid/net/wifi/hs20/WifiHs20DMData;
    .locals 14
    .param p1, "credentialType"    # I
    .param p2, "credentialID"    # I
    .param p3, "subscriptionType"    # Ljava/lang/String;

    .prologue
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCredentialscredentialID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "subscriptionType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "credentialType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotId(I)I

    move-result v12

    .local v12, "hotspotID":I
    const/4 v8, 0x0

    .local v8, "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCredentialshotspotID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HS2.0SubscriptionRemediation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "selectArgs":[Ljava/lang/String;
    const-string v4, "hotspot_id=? AND type_of_node=?"

    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    mul-int/lit8 v1, v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aput-object v2, v5, v1

    const/4 v10, 0x0

    .local v10, "dbCur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_0
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;

    move-result-object v8

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectArgs":[Ljava/lang/String;
    .end local v10    # "dbCur":Landroid/database/Cursor;
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    :try_start_1
    iget-object v1, v8, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    if-eqz v1, :cond_3

    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Username:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Password :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v6, v8, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    const/4 v13, 0x0

    invoke-static {v6, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_2
    move-object v1, v8

    :cond_4
    :goto_3
    return-object v1

    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectArgs":[Ljava/lang/String;
    .restart local v10    # "dbCur":Landroid/database/Cursor;
    :cond_5
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .local v7, "count":I
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HS2.0SubscriptionRemediation:- count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-le v7, v1, :cond_6

    const-string v1, "HotspotDMHandler"

    const-string v2, "More than 2 entries exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_6
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v9, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v9}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .local v9, "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_4
    const-string v1, "username"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    const-string v1, "password"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    iget-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v1, :cond_10

    :cond_7
    const/4 v8, 0x0

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_5
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    goto/16 :goto_0

    .end local v7    # "count":I
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectArgs":[Ljava/lang/String;
    .end local v10    # "dbCur":Landroid/database/Cursor;
    :cond_9
    const-string v1, "HS2.0PolicyUpdate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .restart local v4    # "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "selectArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "dbCur":Landroid/database/Cursor;
    const-string v4, "hotspot_id=? AND type_of_node=?"

    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    mul-int/lit8 v1, v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aput-object v2, v5, v1

    :try_start_7
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_b

    :cond_a
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v8

    :goto_6
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_b
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .restart local v7    # "count":I
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyUpdate:- count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-le v7, v1, :cond_c

    const-string v1, "HotspotDMHandler"

    const-string v2, "More than 2 entries exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v1, 0x0

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_c
    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v9, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v9}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_a
    const-string v1, "username"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    const-string v1, "password"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    iget-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v1, :cond_f

    :cond_d
    const/4 v8, 0x0

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_b
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v8

    goto :goto_6

    .end local v7    # "count":I
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_c
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    :goto_8
    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectArgs":[Ljava/lang/String;
    .end local v10    # "dbCur":Landroid/database/Cursor;
    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectArgs":[Ljava/lang/String;
    .restart local v7    # "count":I
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v10    # "dbCur":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto :goto_8

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :catch_3
    move-exception v11

    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto :goto_7

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :catchall_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto/16 :goto_5

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :catch_4
    move-exception v11

    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto/16 :goto_4

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :cond_f
    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto/16 :goto_6

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :cond_10
    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto/16 :goto_0
.end method

.method public getDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 14
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v9, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .local v9, "nodeURI":Ljava/lang/String;
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .local v10, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v11

    .local v11, "ret":Z
    if-nez v11, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    .local v1, "tableURI":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .local v2, "projection":[Ljava/lang/String;
    const-string v6, ""

    .local v6, "dbFieldName":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param.nodeName is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v5, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "dbFieldName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "dbFieldName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .local v12, "stbuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v8, v0, :cond_3

    const-string v0, "=? AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "=?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    const/4 v7, 0x0

    .local v7, "dbcur":Landroid/database/Cursor;
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_6
    const-string v0, "HotspotDMHandler"

    const-string v4, "Failed to get the Data"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    if-nez v0, :cond_a

    const-string v0, "HotspotDMHandler"

    const-string v4, "Format map has not built"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "HotspotDMHandler"

    const-string v4, "Intenger"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .local v13, "val":I
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    int-to-long v4, v13

    iput-wide v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    .end local v13    # "val":I
    :cond_b
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_e

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .restart local v13    # "val":I
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-eqz v13, :cond_d

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    .end local v13    # "val":I
    :cond_e
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_10

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "val":Ljava/lang/String;
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    iput-object v13, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    goto :goto_3

    :cond_f
    const/4 v0, 0x0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    goto :goto_3

    .end local v13    # "val":Ljava/lang/String;
    :cond_10
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_11

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .local v13, "val":[B
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    iput-object v13, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    array-length v0, v13

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    goto/16 :goto_3

    .end local v13    # "val":[B
    :cond_11
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_b

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .local v13, "val":I
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v0, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "val "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    goto :goto_5
.end method

.method public getDMDataCount(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 14
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    if-nez p1, :cond_0

    const-string v0, "HotspotDMHandler"

    const-string v2, "Data received is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v10, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .local v10, "nodeURI":Ljava/lang/String;
    const-string v0, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " nodeURI is   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .local v7, "cur":Landroid/database/Cursor;
    const/4 v6, 0x0

    .local v6, "count":I
    new-instance v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct {v11}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .local v11, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    invoke-direct {p0, v10, v11}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v12

    .local v12, "ret":Z
    if-nez v12, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    .local v1, "tableURI":Landroid/net/Uri;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .local v13, "stbuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "flag":Z
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_4

    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-eqz v0, :cond_2

    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    if-nez v8, :cond_3

    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    :goto_2
    const-string v0, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection arg is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const-string v0, " AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v9    # "i":I
    :cond_4
    const/4 v3, 0x0

    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v6, v0

    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v6, :cond_7

    const-string v0, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection nodename  ->   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "    selection Argument ->    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v4, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const-string v0, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count  got from the DB"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v4, v6

    iput-wide v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public getFormatType(Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .local v2, "formatType":I
    :try_start_0
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "formatList":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "length":I
    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v1, v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "formatList":[Ljava/lang/String;
    .end local v3    # "length":I
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HotspotDMHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getHotspotId(I)I
    .locals 10
    .param p1, "credentialID"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    new-array v4, v0, [Ljava/lang/String;

    .local v4, "selectArgs":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "credential_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "dbCur":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string v0, "HotspotDMHandler"

    const-string v1, "Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    const/4 v0, 0x1

    if-le v6, v0, :cond_3

    const-string v0, "HotspotDMHandler"

    const-string v1, "More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, "hotspotID":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public replaceDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 21
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceDMData :Data format from DM client"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFormatType(Ljava/lang/String;)I

    move-result v10

    .local v10, "format":I
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceDMData :Data format getFormatType"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    if-ne v10, v2, :cond_1

    const-string v2, "HotspotDMHandler"

    const-string v4, "Field Name Node !!! Return Nothing to be added  "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .local v14, "nodeURI":Ljava/lang/String;
    const-string v2, "HotspotDMHandler"

    const-string v4, "*******************REPLACE METHOD*********************"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nodeURI is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "       "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    .local v16, "replacecur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, "count":I
    new-instance v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct {v15}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .local v15, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v17

    .local v17, "ret":Z
    if-nez v17, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .local v12, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.action.HOTSPOT_UPDATE_MO"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v12    # "intent":Landroid/content/Intent;
    :cond_3
    iget v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v3

    .local v3, "tableURI":Landroid/net/Uri;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .local v19, "stbuilder":Ljava/lang/StringBuilder;
    iget-object v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v2, :cond_5

    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget-object v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v2, v2

    if-ge v11, v2, :cond_6

    iget-object v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v11, v2, :cond_4

    const-string v2, "=? AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "=?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v3    # "tableURI":Landroid/net/Uri;
    .end local v8    # "count":I
    .end local v10    # "format":I
    .end local v11    # "i":I
    .end local v14    # "nodeURI":Ljava/lang/String;
    .end local v15    # "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    .end local v16    # "replacecur":Landroid/database/Cursor;
    .end local v17    # "ret":Z
    .end local v19    # "stbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "tableURI":Landroid/net/Uri;
    .restart local v8    # "count":I
    .restart local v10    # "format":I
    .restart local v14    # "nodeURI":Ljava/lang/String;
    .restart local v15    # "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    .restart local v16    # "replacecur":Landroid/database/Cursor;
    .restart local v17    # "ret":Z
    .restart local v19    # "stbuilder":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_1
    const-string v2, "HotspotDMHandler"

    const-string v4, "Not a valid URI"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    .restart local v11    # "i":I
    :cond_6
    iget v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    const-string v2, "HotspotDMHandler"

    const-string v4, "It is the Dynamic node. So dont replace"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "selection":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    iget-object v6, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .local v20, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-nez v2, :cond_a

    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "param.nodeName is  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "nName":Ljava/lang/String;
    if-eqz v13, :cond_9

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .end local v13    # "nName":Ljava/lang/String;
    :cond_9
    :goto_3
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .local v18, "retValue":I
    if-nez v18, :cond_d

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v18    # "retValue":I
    :cond_a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_c

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .restart local v18    # "retValue":I
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public startSession()Z
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.action.HOTSPOT_START_SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    const/4 v1, 0x1

    return v1
.end method
