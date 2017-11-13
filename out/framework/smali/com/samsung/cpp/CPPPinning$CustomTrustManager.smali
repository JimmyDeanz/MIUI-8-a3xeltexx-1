.class Lcom/samsung/cpp/CPPPinning$CustomTrustManager;
.super Ljava/lang/Object;
.source "CPPPinning.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPPinning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomTrustManager"
.end annotation


# instance fields
.field private endpointUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/cpp/CPPPinning;

.field private trustedCertificates:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/cpp/CPPPinning;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "certificate"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 269
    iput-object p1, p0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->this$0:Lcom/samsung/cpp/CPPPinning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object v0, p0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    .line 267
    iput-object v0, p0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->trustedCertificates:Ljava/lang/String;

    .line 272
    iput-object p2, p0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    .line 273
    iput-object p3, p0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->trustedCertificates:Ljava/lang/String;

    .line 274
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v0, "CPPPinning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomTrustManager[endpointUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] --check CLIENT Trusted--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 17
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 291
    const-string v14, "CPPPinning"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CustomTrustManager[endpointUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] --check SERVER Trusted--"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->trustedCertificates:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->trustedCertificates:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 293
    :cond_0
    const-string v14, "CPPPinning"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CustomTrustManager[endpointUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] --check SERVER Trusted-- SERVER IS NOT "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "TRUSTED. NO CERT FOR "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->this$0:Lcom/samsung/cpp/CPPPinning;

    # invokes: Lcom/samsung/cpp/CPPPinning;->query()V
    invoke-static {v14}, Lcom/samsung/cpp/CPPPinning;->access$000(Lcom/samsung/cpp/CPPPinning;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    new-instance v14, Ljava/security/cert/CertificateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cpp pinningNo trusted certificate for : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 297
    :catch_0
    move-exception v4

    .line 298
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 302
    .end local v4    # "e1":Ljava/io/IOException;
    :cond_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-nez v14, :cond_2

    .line 303
    const-string v14, "CPPPinning"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CustomTrustManager[endpointUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] --check SERVER Trusted-- ...... SERVER DOES NOT PROVIDE A CERTIFICATE CHAIN!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "cpp pinningThis server does not provide a certificate chain"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 307
    :cond_2
    const-string v14, "CPPPinning"

    const-string v15, "WITH LEAF 509"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v8, 0x0

    .line 311
    .local v8, "matched":Z
    const/4 v14, 0x0

    aget-object v6, p1, v14

    .line 312
    .local v6, "leafX509":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 314
    .local v9, "pubkeyOfLeaf":Ljava/security/PublicKey;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->trustedCertificates:Ljava/lang/String;

    invoke-static {v14}, Lcom/samsung/cpp/CPPPinning;->pemToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v11

    .line 315
    .local v11, "tempTrustedX509":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .line 318
    .local v10, "tempTrustedPubKey":Ljava/security/PublicKey;
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 319
    const-string v14, "CPPPinning"

    const-string v15, "@checkServerTrusted matchFound"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v8, 0x1

    .line 323
    :cond_3
    if-eqz v8, :cond_5

    .line 329
    :try_start_1
    const-string v14, "CPPPinning"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CustomTrustManager[endpointUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] --check SERVER Trusted-- ...... performing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "customary SSL/TLS checks..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v14, "X509"

    invoke-static {v14}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v12

    .line 332
    .local v12, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v14, 0x0

    check-cast v14, Ljava/security/KeyStore;

    invoke-virtual {v12, v14}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 334
    invoke-virtual {v12}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .local v2, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v13, v2, v5

    .line 335
    .local v13, "trustManager":Ljavax/net/ssl/TrustManager;
    check-cast v13, Ljavax/net/ssl/X509TrustManager;

    .end local v13    # "trustManager":Ljavax/net/ssl/TrustManager;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 339
    .end local v2    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v12    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1
    move-exception v3

    .line 340
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "CPPPinning"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CustomTrustManager[endpointUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] --check SERVER Trusted-- exception when performing"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " customary SSL/TLS check! : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v14, "CPPPinning"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CustomTrustManager[endpointUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] --check SERVER Trusted-- ...... SERVER IS NOT TRUSTED! failed "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "customary SSL/TLS check!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->this$0:Lcom/samsung/cpp/CPPPinning;

    # invokes: Lcom/samsung/cpp/CPPPinning;->query()V
    invoke-static {v14}, Lcom/samsung/cpp/CPPPinning;->access$000(Lcom/samsung/cpp/CPPPinning;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 349
    :goto_2
    new-instance v14, Ljava/security/cert/CertificateException;

    const-string v15, "cpp pinningServer certificate does not pass SSL/TLS check"

    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 346
    :catch_2
    move-exception v4

    .line 347
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 351
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/io/IOException;
    .restart local v2    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v12    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_4
    const-string v14, "CPPPinning"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CustomTrustManager[endpointUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] --check SERVER Trusted-- ...... SERVER IS TRUSTED"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 353
    .end local v2    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v12    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_5
    const-string v14, "CPPPinning"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CustomTrustManager[endpointUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] --check SERVER Trusted-- ...... SERVER IS NOT TRUSTED!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->this$0:Lcom/samsung/cpp/CPPPinning;

    # invokes: Lcom/samsung/cpp/CPPPinning;->query()V
    invoke-static {v14}, Lcom/samsung/cpp/CPPPinning;->access$000(Lcom/samsung/cpp/CPPPinning;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 359
    :goto_3
    new-instance v14, Ljava/security/cert/CertificateException;

    const-string v15, "cpp pinningThis server does not have the correct certificate"

    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 356
    :catch_3
    move-exception v3

    .line 357
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 3

    .prologue
    .line 278
    const-string v0, "CPPPinning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomTrustManager[endpointUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;->endpointUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] --getAcceptedIssuers--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
