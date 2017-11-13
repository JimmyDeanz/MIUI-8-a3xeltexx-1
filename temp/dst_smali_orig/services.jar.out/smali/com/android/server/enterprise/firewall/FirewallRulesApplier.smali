.class Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
.super Ljava/lang/Object;
.source "FirewallRulesApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = " --wait ; "


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

.field private mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firewallService"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    return-void
.end method

.method static createIptablesChains()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .local v1, "cmdRunner":Ljava/lang/Runtime;
    invoke-static {}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateChainsCommands()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 1
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v0

    return-object v0
.end method

.method private enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 1
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "forceEnable"    # Z
    .param p3, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v0

    return-object v0
.end method

.method private runShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "/system/bin/sh"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "-c"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "response":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "lineRead":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "lineRead":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "IOException was thrown."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-object v6

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "lineRead":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "IOException was thrown."

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "lineRead":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/StringBuilder;
    .local v2, "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v6, "IOException was thrown."

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    throw v6

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v6, "IOException was thrown."

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    goto :goto_4

    .local v2, "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "lineRead":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v2

    goto :goto_2
.end method

.method private updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V
    .locals 4
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "status"    # Lcom/sec/enterprise/firewall/FirewallRule$Status;
    .param p3, "mCxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "filterValues":Landroid/content/ContentValues;
    iget v2, p3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    const-string v2, "adminUid"

    iget v3, p3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "newValue":Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ruleType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$sec$enterprise$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "ipAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "packageName"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "signature"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "portNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "portLocation"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "direction"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "networkInterface"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "protocol"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "addressType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "FirewallRule"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "ipAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "packageName"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "signature"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "portNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "portLocation"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "direction"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "networkInterface"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "protocol"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "addressType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "FirewallRule"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "packageName"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "signature"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "ipAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "portNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "targetIpAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "targetPortNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "networkInterface"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "protocol"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "addressType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "FirewallRule"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "ipAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "packageName"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "signature"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "portNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "protocol"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "addressType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "FirewallRule"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 8
    .param p1, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "mCxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "status"    # Z

    .prologue
    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    array-length v7, p1

    new-array v3, v7, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .local v3, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    array-length v7, p1

    if-lez v7, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallResponse;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .local v5, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v5, :cond_2

    if-eqz p3, :cond_3

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_4
    array-length v7, p1

    new-array v6, v7, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .local v6, "rulesResponses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    check-cast v3, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .restart local v3    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_0
.end method

.method deleteRulesFromAdmin(Landroid/app/enterprise/ContextInfo;)V
    .locals 5
    .param p1, "mCxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewall(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v1, p1, v4}, Lcom/android/server/enterprise/firewall/Firewall;->clearRules(Landroid/app/enterprise/ContextInfo;I)[Lcom/sec/enterprise/firewall/FirewallResponse;

    const/4 v0, 0x0

    .local v0, "rulesToDisable":[Lcom/sec/enterprise/firewall/FirewallRule;
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;

    return-void
.end method

.method disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 9
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "isAdminRule"    # Z

    .prologue
    invoke-static {p1}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v5

    .local v5, "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v6

    sget-object v7, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v6, v7}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .end local v5    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    return-object v5

    .restart local v5    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getRemoveIptablesCommand(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "commands":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "response":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "commandString":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_1

    aget-object v6, v2, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --wait ; "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commandResponde":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V

    :cond_2
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v5    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v8, "The rule was successfully disabled."

    invoke-direct {v5, v6, v7, v8}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 14
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "forceEnable"    # Z
    .param p3, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p4, "isAdminRule"    # Z

    .prologue
    move-object/from16 v0, p3

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v8, "uid":I
    invoke-static {p1}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v9

    .local v9, "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    return-object v9

    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_0
    if-nez p2, :cond_1

    if-eqz p4, :cond_1

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    invoke-static {p1, v8, v10}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x3e8

    if-eq v8, v10, :cond_1

    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "The specified rule is already enabled."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v1

    .local v1, "addressType":Lcom/sec/enterprise/firewall/Firewall$AddressType;
    sget-object v10, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v10, v1}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v7

    .local v7, "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v10, v7}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v10, v7}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    sget-boolean v10, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    if-nez v10, :cond_3

    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "This device does not have IPv6 support for this type of rule."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_3
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v10, v7}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v10, v7}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    sget-boolean v10, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    if-nez v10, :cond_5

    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "This device does not have IPv6 support for this type of rule."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .end local v7    # "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_5
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "commands":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, "response":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "commandString":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_6

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v4

    if-ge v5, v10, :cond_6

    aget-object v10, v4, v5

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " --wait ; "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "commandResponde":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {p1, v10}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "The rule was successfully enabled."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_7
    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to enable rule.\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_8
    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "The rule was successfully enabled."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method flushAllChains()Z
    .locals 5

    .prologue
    invoke-static {}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getFlushAllChainsCommand()[Ljava/lang/String;

    move-result-object v2

    .local v2, "commands":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "commandString":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --wait ; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commandResponse":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method getAllAdmins()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "allAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .local v1, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v6, "ADMIN"

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-object v0
.end method

.method hasIpv6Support(Ljava/lang/String;)Z
    .locals 7
    .param p1, "chain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v6, "16"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "mdm_config_version":I
    const/16 v6, 0x10

    if-ge v4, v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getTestIpv6Commands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "commands":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "commandString":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_2

    aget-object v6, v2, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --wait ; "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commandResponse":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method listIptablesRules(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .local v4, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "************ FILTER TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "filter"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "stringReturned":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "************ NAT TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "nat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "************ MANGLE TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "mangle"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "************ RAW TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "raw"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    if-eqz v5, :cond_0

    const-string v5, "=============== IPV6 RULES ==============="

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "************ FILTER TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "filter"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v5, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    if-eqz v5, :cond_1

    const-string v5, "************ NAT TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "nat"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "************ MANGLE TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "mangle"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "************ RAW TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "raw"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .local v1, "returnArray":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "returnArray":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .restart local v1    # "returnArray":[Ljava/lang/String;
    return-object v1
.end method

.method reloadIptablesRules()V
    .locals 12

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "adminUid":I
    const/16 v9, 0x3e8

    if-eq v1, v9, :cond_0

    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .local v3, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v10, 0xf

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v8

    .local v8, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    move-object v2, v8

    .local v2, "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v2, v5

    .local v7, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-virtual {v7}, Lcom/sec/enterprise/firewall/FirewallRule;->getStatus()Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v9

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v9, v10}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    invoke-direct {p0, v7, v9, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v1    # "adminUid":I
    .end local v2    # "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v8    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_2
    return-void
.end method

.method setRulesStatusAfterReboot()V
    .locals 13

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "adminUid":I
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .local v3, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v6, 0x0

    .local v6, "isFrwEnabled":Z
    const/4 v9, 0x0

    .local v9, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {v10, v3, v11, v12}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v9

    if-eqz v9, :cond_0

    move-object v2, v9

    .local v2, "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v8, v2, v5

    .local v8, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v6, :cond_1

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-direct {p0, v8, v10, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-direct {p0, v8, v10, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V

    goto :goto_1

    .end local v1    # "adminUid":I
    .end local v2    # "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v5    # "i$":I
    .end local v6    # "isFrwEnabled":Z
    .end local v7    # "len$":I
    .end local v8    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v9    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_2
    return-void
.end method
