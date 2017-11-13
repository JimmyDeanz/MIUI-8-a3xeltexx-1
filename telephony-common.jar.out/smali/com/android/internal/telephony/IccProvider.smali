.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final ADN:I = 0x1

.field protected static final ADN_ALL:I = 0x7

.field private static final ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final ADN_EMAILS:I = 0x10

.field protected static final ADN_EMAILS_SUB:I = 0x11

.field protected static final ADN_EXPANSION:I = 0x14

.field protected static final ADN_EXPANSION_SUB:I = 0x15

.field protected static final ADN_FROM_CONTACTS:I = 0xa

.field protected static final ADN_FROM_CONTACTS_SUB:I = 0xb

.field protected static final ADN_INIT:I = 0x16

.field protected static final ADN_INIT_SUB:I = 0x17

.field private static final ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final ADN_SUB:I = 0x2

.field private static final DBG:Z

.field private static final EMAIL_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final FDN:I = 0x3

.field protected static final FDN_FROM_CONTACTS:I = 0xc

.field protected static final FDN_FROM_CONTACTS_SUB:I = 0xd

.field protected static final FDN_SUB:I = 0x4

.field protected static final ICC_CAPA_INFO:I = 0x12

.field protected static final ICC_CAPA_INFO_SUB:I = 0x13

.field protected static final MSISDN:I = 0x8

.field protected static final MSISDN_FROM_CONTACTS:I = 0xe

.field protected static final MSISDN_FROM_CONTACTS_SUB:I = 0xf

.field protected static final MSISDN_SUB:I = 0x9

.field protected static final SDN:I = 0x5

.field protected static final SDN_SUB:I = 0x6

.field protected static final STR_ANRA_NUMBER:Ljava/lang/String; = "anrA_number"

.field protected static final STR_ANRB_NUMBER:Ljava/lang/String; = "anrB_number"

.field protected static final STR_ANRC_NUMBER:Ljava/lang/String; = "anrC_number"

.field protected static final STR_ANR_NUMBER:Ljava/lang/String; = "anr_number"

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_INDEX:Ljava/lang/String; = "adn_index"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v0, v2

    const-string v3, "number"

    aput-object v3, v0, v1

    const-string v3, "anr_number"

    aput-object v3, v0, v5

    const-string v3, "anrA_number"

    aput-object v3, v0, v6

    const-string v3, "anrB_number"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "anrC_number"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "emails"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "adn_index"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "_id"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 70
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "emails"

    aput-object v3, v0, v2

    const-string v3, "adn_index"

    aput-object v3, v0, v1

    const-string v3, "_id"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    .line 76
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "name_MaxCount"

    aput-object v3, v0, v2

    const-string v3, "name_UsedCount"

    aput-object v3, v0, v1

    const-string v3, "name_MaxLength"

    aput-object v3, v0, v5

    const-string v3, "number_MaxCount"

    aput-object v3, v0, v6

    const-string v3, "number_UsedCount"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "number_MaxLength"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "email_MaxCount"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "email_UsedCount"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "email_MaxLength"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "maxCount"

    aput-object v3, v0, v2

    const-string v2, "usedCount"

    aput-object v2, v0, v1

    const-string v2, "firstIndex"

    aput-object v2, v0, v5

    const-string v2, "name_MaxLength"

    aput-object v2, v0, v6

    const-string v2, "number_MaxLength"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 132
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 136
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "icc"

    const-string v3, "adn"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/subId/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/subId/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn/subId/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn/subId/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/from_contacts"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/from_contacts/subId/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/from_contacts"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/from_contacts/subId/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn/from_contacts"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn/from_contacts/subId/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/emails"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/emails/subId/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "capacity"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "capacity/subId/#"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/expansion"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/expansion/subId/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/init"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/init/subId/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addExpansionIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "anrNumber"    # Ljava/lang/String;
    .param p5, "anrANumber"    # Ljava/lang/String;
    .param p6, "anrBNumber"    # Ljava/lang/String;
    .param p7, "anrCNumber"    # Ljava/lang/String;
    .param p8, "email"    # Ljava/lang/String;
    .param p9, "pin2"    # Ljava/lang/String;
    .param p10, "subId"    # I

    .prologue
    .line 1250
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addExpansionIccRecordToEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anrNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anrANumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anrBNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anrCNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", email="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1252
    :cond_0
    const v5, 0xffff

    .line 1254
    .local v5, "index":I
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v4, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    .local v4, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iput-object p2, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 1257
    iput-object p3, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 1258
    iput-object p4, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnr:Ljava/lang/String;

    .line 1259
    iput-object p5, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrA:Ljava/lang/String;

    .line 1260
    iput-object p6, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrB:Ljava/lang/String;

    .line 1261
    iput-object p7, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrC:Ljava/lang/String;

    .line 1262
    iget-object v2, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p8, v2, v3

    .line 1265
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1267
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    move/from16 v2, p10

    move v3, p1

    move-object/from16 v6, p9

    .line 1268
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingARnSubId(IILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1275
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addExpansionIccRecordToEfByIndex: index =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1276
    :cond_2
    return v5

    .line 1272
    :catch_0
    move-exception v7

    .line 1273
    .local v7, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1270
    .end local v7    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 1194
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1197
    :cond_0
    const/4 v10, 0x0

    .line 1205
    .local v10, "success":Z
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1207
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 1208
    const-string v4, ""

    const-string v5, ""

    move/from16 v2, p6

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1216
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1217
    :cond_2
    return v10

    .line 1213
    :catch_0
    move-exception v9

    .line 1214
    .local v9, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1211
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 1225
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subscription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1227
    :cond_0
    const v6, 0xffff

    .line 1229
    .local v6, "index":I
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1232
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    move v1, p6

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 1233
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsWithEmailInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1241
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEfByIndex: index =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1242
    :cond_2
    return v6

    .line 1238
    :catch_0
    move-exception v8

    .line 1239
    .local v8, "ex":Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 1369
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1373
    :cond_0
    const/4 v10, 0x0

    .line 1376
    .local v10, "success":Z
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1378
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 1379
    const-string v6, ""

    const-string v7, ""

    move/from16 v2, p6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1387
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1388
    :cond_2
    return v10

    .line 1384
    :catch_0
    move-exception v9

    .line 1385
    .local v9, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1382
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "index"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .prologue
    .line 1393
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subscription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1397
    :cond_0
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1400
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 1401
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move v1, p4

    move v2, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsWithEmailInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1409
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1410
    :cond_2
    return p2

    .line 1406
    :catch_0
    move-exception v8

    .line 1407
    .local v8, "ex":Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1404
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getAdnLikesInfo(I)Landroid/database/MatrixCursor;
    .locals 11
    .param p1, "efType"    # I

    .prologue
    const/4 v10, 0x1

    .line 1125
    const/4 v9, 0x5

    new-array v7, v9, [I

    .line 1127
    .local v7, "recordInfo":[I
    :try_start_0
    const-string v9, "simphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1130
    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 1131
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1136
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 1137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    aget v4, v7, v9

    .line 1139
    .local v4, "maxCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    aget v8, v7, v10

    .line 1141
    .local v8, "usedCount":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    const/4 v9, 0x2

    aget v1, v7, v9

    .line 1143
    .local v1, "firstIndex":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    const/4 v9, 0x3

    aget v5, v7, v9

    .line 1145
    .local v5, "nameMax":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    const/4 v9, 0x4

    aget v6, v7, v9

    .line 1147
    .local v6, "numberMax":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1150
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 1153
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .end local v1    # "firstIndex":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "maxCount":I
    .end local v5    # "nameMax":I
    .end local v6    # "numberMax":I
    .end local v8    # "usedCount":I
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_1

    .line 1134
    :catch_0
    move-exception v9

    goto :goto_0

    .line 1133
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;
    .locals 11
    .param p1, "subId"    # I
    .param p2, "efType"    # I

    .prologue
    const/4 v10, 0x1

    .line 1158
    const/4 v9, 0x5

    new-array v7, v9, [I

    .line 1160
    .local v7, "recordInfo":[I
    :try_start_0
    const-string v9, "simphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1163
    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 1164
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfoForSubscriber(II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1169
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 1170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    aget v4, v7, v9

    .line 1172
    .local v4, "maxCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    aget v8, v7, v10

    .line 1174
    .local v8, "usedCount":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    const/4 v9, 0x2

    aget v1, v7, v9

    .line 1176
    .local v1, "firstIndex":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    const/4 v9, 0x3

    aget v5, v7, v9

    .line 1178
    .local v5, "nameMax":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    const/4 v9, 0x4

    aget v6, v7, v9

    .line 1180
    .local v6, "numberMax":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1183
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 1186
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .end local v1    # "firstIndex":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "maxCount":I
    .end local v5    # "nameMax":I
    .end local v6    # "numberMax":I
    .end local v8    # "usedCount":I
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_1

    .line 1167
    :catch_0
    move-exception v9

    goto :goto_0

    .line 1166
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private getRequestSubId(Landroid/net/Uri;)I
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1495
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestSubId url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1498
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getUSIMPBCapa()Landroid/database/MatrixCursor;
    .locals 17

    .prologue
    .line 1025
    sget-boolean v15, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v15, :cond_0

    const-string v15, "getUSIMPBCapa"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1026
    :cond_0
    new-instance v14, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v14}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 1028
    .local v14, "usimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_start_0
    const-string v15, "simphonebook"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v6

    .line 1031
    .local v6, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v6, :cond_1

    .line 1032
    invoke-interface {v6}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1040
    .end local v6    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    .line 1041
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v9

    .line 1043
    .local v9, "nameMaxCount":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    const/4 v15, 0x1

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v10

    .line 1045
    .local v10, "nameUsedCount":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    const/4 v15, 0x1

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    .line 1047
    .local v8, "nameLength":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v12

    .line 1050
    .local v12, "numberMaxCount":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    const/4 v15, 0x2

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v13

    .line 1052
    .local v13, "numberUsedCount":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    const/4 v15, 0x2

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v11

    .line 1054
    .local v11, "numberLength":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    const/4 v15, 0x4

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 1057
    .local v3, "emailMaxCount":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    const/4 v15, 0x4

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 1059
    .local v4, "emailUsedCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    const/4 v15, 0x4

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    .line 1061
    .local v2, "emailLength":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v15, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v1, v15, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1064
    .local v1, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v1, v7}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 1067
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "emailLength":I
    .end local v3    # "emailMaxCount":I
    .end local v4    # "emailUsedCount":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "nameLength":I
    .end local v9    # "nameMaxCount":I
    .end local v10    # "nameUsedCount":I
    .end local v11    # "numberLength":I
    .end local v12    # "numberMaxCount":I
    .end local v13    # "numberUsedCount":I
    :goto_1
    return-object v1

    .line 1036
    :catch_0
    move-exception v5

    .line 1037
    .local v5, "ex":Ljava/lang/SecurityException;
    sget-boolean v15, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v15, :cond_1

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1067
    .end local v5    # "ex":Ljava/lang/SecurityException;
    :cond_2
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v15, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_1

    .line 1034
    :catch_1
    move-exception v15

    goto/16 :goto_0
.end method

.method private getUsimPBCapaInfoForSubscriber(I)Landroid/database/MatrixCursor;
    .locals 17
    .param p1, "subId"    # I

    .prologue
    .line 1072
    sget-boolean v15, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v15, :cond_0

    const-string v15, "getUSIMPBCapa"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1073
    :cond_0
    new-instance v14, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v14}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 1075
    .local v14, "usimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_start_0
    const-string v15, "simphonebook"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v6

    .line 1078
    .local v6, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v6, :cond_1

    .line 1079
    move/from16 v0, p1

    invoke-interface {v6, v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfoForSubscriber(I)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1087
    .end local v6    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    .line 1088
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v9

    .line 1090
    .local v9, "nameMaxCount":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    const/4 v15, 0x1

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v10

    .line 1092
    .local v10, "nameUsedCount":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    const/4 v15, 0x1

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    .line 1094
    .local v8, "nameLength":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v12

    .line 1097
    .local v12, "numberMaxCount":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    const/4 v15, 0x2

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v13

    .line 1099
    .local v13, "numberUsedCount":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    const/4 v15, 0x2

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v11

    .line 1101
    .local v11, "numberLength":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    const/4 v15, 0x4

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 1104
    .local v3, "emailMaxCount":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    const/4 v15, 0x4

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 1106
    .local v4, "emailUsedCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    const/4 v15, 0x4

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    .line 1108
    .local v2, "emailLength":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v15, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v1, v15, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1111
    .local v1, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v1, v7}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 1114
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "emailLength":I
    .end local v3    # "emailMaxCount":I
    .end local v4    # "emailUsedCount":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "nameLength":I
    .end local v9    # "nameMaxCount":I
    .end local v10    # "nameUsedCount":I
    .end local v11    # "numberLength":I
    .end local v12    # "numberMaxCount":I
    .end local v13    # "numberUsedCount":I
    :goto_1
    return-object v1

    .line 1083
    :catch_0
    move-exception v5

    .line 1084
    .local v5, "ex":Ljava/lang/SecurityException;
    sget-boolean v15, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v15, :cond_1

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1114
    .end local v5    # "ex":Ljava/lang/SecurityException;
    :cond_2
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v15, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_1

    .line 1081
    :catch_1
    move-exception v15

    goto/16 :goto_0
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 9
    .param p1, "efType"    # I

    .prologue
    const/4 v8, 0x0

    .line 317
    iget-object v5, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 319
    .local v4, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 320
    :cond_0
    new-array v1, v8, [Landroid/database/Cursor;

    .line 333
    .local v1, "result":[Landroid/database/Cursor;
    :cond_1
    new-instance v5, Landroid/database/MergeCursor;

    invoke-direct {v5, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v5

    .line 322
    .end local v1    # "result":[Landroid/database/Cursor;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 323
    .local v3, "subIdCount":I
    new-array v1, v3, [Landroid/database/Cursor;

    .line 326
    .restart local v1    # "result":[Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 327
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 328
    .local v2, "subId":I
    invoke-direct {p0, p1, v8, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v5

    aput-object v5, v1, v0

    .line 329
    const-string v5, "IccProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADN Records loaded for Subscription ::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadEmailRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 10
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 1514
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1515
    const/4 v8, 0x3

    new-array v2, v8, [Ljava/lang/Object;

    .line 1516
    .local v2, "contact":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    .line 1517
    .local v4, "emails":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v0

    .line 1518
    .local v0, "adnIndex":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1520
    .local v6, "index":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1521
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v1, v5

    .line 1522
    .local v3, "email":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1524
    const/4 v8, 0x0

    aput-object v3, v2, v8

    .line 1525
    const/4 v8, 0x1

    aput-object v6, v2, v8

    .line 1526
    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 1527
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1521
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1532
    .end local v0    # "adnIndex":I
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "contact":[Ljava/lang/Object;
    .end local v3    # "email":Ljava/lang/String;
    .end local v4    # "emails":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "index":Ljava/lang/String;
    .end local v7    # "len$":I
    :cond_1
    return-void
.end method

.method private loadFromEf(IZI)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "efType"    # I
    .param p2, "isEmailOnly"    # Z
    .param p3, "subId"    # I

    .prologue
    .line 952
    sget-boolean v6, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subscription="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 954
    :cond_0
    const/4 v1, 0x0

    .line 956
    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 958
    .local v5, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_1

    .line 959
    invoke-interface {v5, p3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 967
    .end local v5    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 969
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 972
    .local v0, "N":I
    sget-boolean v6, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 973
    :cond_2
    if-nez p2, :cond_3

    .line 974
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 975
    .local v2, "cursor":Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 976
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 975
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 963
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 964
    .local v3, "ex":Ljava/lang/SecurityException;
    sget-boolean v6, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 979
    .end local v3    # "ex":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    :cond_3
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 980
    .restart local v2    # "cursor":Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v0, :cond_5

    .line 981
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadEmailRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 980
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 988
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    :cond_4
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_5
    return-object v2

    .line 961
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadFromEfInit(II)Landroid/database/MatrixCursor;
    .locals 7
    .param p1, "efType"    # I
    .param p2, "subId"    # I

    .prologue
    .line 995
    const/4 v1, 0x0

    .line 997
    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    sget-boolean v5, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromEfInit: efType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1000
    :cond_0
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 1002
    .local v4, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_1

    .line 1003
    invoke-interface {v4, p2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfInitForSubscriber(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1010
    .end local v4    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 1011
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1012
    .local v0, "N":I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1013
    .local v2, "cursor":Landroid/database/MatrixCursor;
    sget-boolean v5, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adnRecords.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1014
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 1015
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 1014
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1020
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    :cond_3
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_4
    return-object v2

    .line 1007
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1005
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 19
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 1421
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a

    .line 1423
    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/Object;

    .line 1424
    .local v9, "contact":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    .line 1425
    .local v7, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v16

    .line 1426
    .local v16, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    .line 1427
    .local v5, "ANRNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, "ANRANumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object v3

    .line 1429
    .local v3, "ANRBNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object v4

    .line 1431
    .local v4, "ANRCNumber":Ljava/lang/String;
    sget-boolean v17, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v17, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "loadRecord: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1439
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1440
    const/16 v17, 0x0

    aput-object v7, v9, v17

    .line 1444
    :goto_0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1445
    const/16 v17, 0x1

    aput-object v16, v9, v17

    .line 1449
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1450
    const/16 v17, 0x2

    aput-object v5, v9, v17

    .line 1454
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1455
    const/16 v17, 0x3

    aput-object v2, v9, v17

    .line 1459
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1460
    const/16 v17, 0x4

    aput-object v3, v9, v17

    .line 1464
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 1465
    const/16 v17, 0x5

    aput-object v4, v9, v17

    .line 1470
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v12

    .line 1471
    .local v12, "emails":[Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 1472
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1473
    .local v11, "emailString":Ljava/lang/StringBuilder;
    move-object v8, v12

    .local v8, "arr$":[Ljava/lang/String;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_6
    if-ge v13, v15, :cond_8

    aget-object v10, v8, v13

    .line 1474
    .local v10, "email":Ljava/lang/String;
    sget-boolean v17, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v17, :cond_1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Adding email:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1475
    :cond_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1442
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "emailString":Ljava/lang/StringBuilder;
    .end local v12    # "emails":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_0

    .line 1447
    :cond_3
    const/16 v17, 0x1

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_1

    .line 1452
    :cond_4
    const/16 v17, 0x2

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_2

    .line 1457
    :cond_5
    const/16 v17, 0x3

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_3

    .line 1462
    :cond_6
    const/16 v17, 0x4

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_4

    .line 1467
    :cond_7
    const/16 v17, 0x5

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_5

    .line 1478
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v11    # "emailString":Ljava/lang/StringBuilder;
    .restart local v12    # "emails":[Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v15    # "len$":I
    :cond_8
    const/16 v17, 0x6

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1481
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v11    # "emailString":Ljava/lang/StringBuilder;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v6

    .line 1482
    .local v6, "adnIndex":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1483
    .local v14, "index":Ljava/lang/String;
    const/16 v17, 0x7

    aput-object v14, v9, v17

    .line 1484
    const/16 v17, 0x8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1485
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1488
    .end local v2    # "ANRANumber":Ljava/lang/String;
    .end local v3    # "ANRBNumber":Ljava/lang/String;
    .end local v4    # "ANRCNumber":Ljava/lang/String;
    .end local v5    # "ANRNumber":Ljava/lang/String;
    .end local v6    # "adnIndex":I
    .end local v7    # "alphaTag":Ljava/lang/String;
    .end local v9    # "contact":[Ljava/lang/Object;
    .end local v12    # "emails":[Ljava/lang/String;
    .end local v14    # "index":Ljava/lang/String;
    .end local v16    # "number":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1491
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 582
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 583
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "len of input String is 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 592
    .end local p1    # "inVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 586
    .restart local p1    # "inVal":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .line 588
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 589
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object p1, v1

    .line 592
    goto :goto_0
.end method

.method private updateExpansionIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 8
    .param p1, "efType"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;
    .param p4, "newAnrNumber"    # Ljava/lang/String;
    .param p5, "newAnrANumber"    # Ljava/lang/String;
    .param p6, "newAnrBNumber"    # Ljava/lang/String;
    .param p7, "newAnrCNumber"    # Ljava/lang/String;
    .param p8, "newEmail"    # Ljava/lang/String;
    .param p9, "index"    # I
    .param p10, "pin2"    # Ljava/lang/String;
    .param p11, "subId"    # I

    .prologue
    .line 1334
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateExpansionIccRecordInEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newanrnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newanrAnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newanrBnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newanrCnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1339
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v4, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    .local v4, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iput-object p2, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 1342
    iput-object p3, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 1343
    iput-object p4, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnr:Ljava/lang/String;

    .line 1344
    iput-object p5, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrA:Ljava/lang/String;

    .line 1345
    iput-object p6, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrB:Ljava/lang/String;

    .line 1346
    iput-object p7, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrC:Ljava/lang/String;

    .line 1347
    iget-object v2, v4, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p8, v2, v3

    .line 1350
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1353
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 1354
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move/from16 v2, p11

    move v3, p1

    move/from16 v5, p9

    move-object/from16 v6, p10

    .line 1355
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingARnSubId(IILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p9

    .line 1362
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateExpansionIccRecordInEfByIndex: index =\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1363
    :cond_2
    return p9

    .line 1359
    :catch_0
    move-exception v7

    .line 1360
    .local v7, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1357
    .end local v7    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 1283
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1288
    :cond_0
    const/4 v10, 0x0

    .line 1291
    .local v10, "success":Z
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1293
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    move/from16 v2, p7

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 1294
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1302
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1303
    :cond_2
    return v10

    .line 1299
    :catch_0
    move-exception v9

    .line 1300
    .local v9, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1297
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 10
    .param p1, "efType"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;
    .param p4, "newEmail"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 1310
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1313
    :cond_0
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1316
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    move/from16 v2, p7

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    .line 1317
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsWithEmailInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p5

    .line 1325
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEfByIndex: index =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1326
    :cond_2
    return p5

    .line 1322
    :catch_0
    move-exception v9

    .line 1323
    .local v9, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1320
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 600
    const/4 v9, -0x1

    .line 601
    .local v9, "index":I
    const/4 v10, 0x0

    .line 604
    .local v10, "isFromContacts":Z
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 605
    .local v12, "match":I
    packed-switch v12, :pswitch_data_0

    .line 675
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot insert into URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 608
    .local v3, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    .line 679
    .local v8, "subId":I
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 682
    :cond_0
    const/4 v4, 0x0

    .line 683
    .local v4, "tag":Ljava/lang/String;
    const/4 v5, 0x0

    .line 684
    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 685
    .local v6, "emails":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 687
    .local v7, "pin2":Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 688
    .local v17, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v13, v0

    .line 690
    .local v13, "n":I
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_b

    .line 691
    aget-object v15, v17, v13

    .line 692
    .local v15, "param":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "parsing \'"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, "\'"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 694
    :cond_2
    const-string v2, "="

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 696
    .local v14, "pair":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 697
    .local v11, "key":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 699
    .local v18, "val":Ljava/lang/String;
    array-length v2, v14

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v2, v0, :cond_3

    .line 700
    const-string v2, "tag"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 702
    const-string v2, "="

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 703
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 713
    :cond_3
    const-string v2, "tag"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 716
    const-string v2, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "Change null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 718
    :cond_4
    const-string v4, ""

    goto/16 :goto_1

    .line 612
    .end local v3    # "efType":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v7    # "pin2":Ljava/lang/String;
    .end local v8    # "subId":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "n":I
    .end local v14    # "pair":[Ljava/lang/String;
    .end local v15    # "param":Ljava/lang/String;
    .end local v17    # "tokens":[Ljava/lang/String;
    .end local v18    # "val":Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3a

    .line 613
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v8

    .line 614
    .restart local v8    # "subId":I
    goto/16 :goto_0

    .line 617
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 618
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    .line 619
    .restart local v8    # "subId":I
    goto/16 :goto_0

    .line 622
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_4
    const/16 v3, 0x6f3b

    .line 623
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v8

    .line 624
    .restart local v8    # "subId":I
    goto/16 :goto_0

    .line 628
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_5
    const/16 v3, 0x6f40

    .line 629
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    .line 630
    .restart local v8    # "subId":I
    goto/16 :goto_0

    .line 633
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_6
    const/16 v3, 0x6f40

    .line 634
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v8

    .line 635
    .restart local v8    # "subId":I
    goto/16 :goto_0

    .line 638
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_7
    const/16 v3, 0x6f3a

    .line 639
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    .line 640
    .restart local v8    # "subId":I
    const/4 v10, 0x1

    .line 641
    goto/16 :goto_0

    .line 644
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_8
    const/16 v3, 0x6f3a

    .line 645
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v8

    .line 646
    .restart local v8    # "subId":I
    const/4 v10, 0x1

    .line 647
    goto/16 :goto_0

    .line 650
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_9
    const/16 v3, 0x6f3b

    .line 651
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    .line 652
    .restart local v8    # "subId":I
    const/4 v10, 0x1

    .line 653
    goto/16 :goto_0

    .line 656
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_a
    const/16 v3, 0x6f3b

    .line 657
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v8

    .line 658
    .restart local v8    # "subId":I
    const/4 v10, 0x1

    .line 659
    goto/16 :goto_0

    .line 662
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_b
    const/16 v3, 0x6f40

    .line 663
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    .line 664
    .restart local v8    # "subId":I
    const/4 v10, 0x1

    .line 665
    goto/16 :goto_0

    .line 668
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_c
    const/16 v3, 0x6f40

    .line 669
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v8

    .line 670
    .restart local v8    # "subId":I
    const/4 v10, 0x1

    .line 671
    goto/16 :goto_0

    .line 705
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "emails":[Ljava/lang/String;
    .restart local v7    # "pin2":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "n":I
    .restart local v14    # "pair":[Ljava/lang/String;
    .restart local v15    # "param":Ljava/lang/String;
    .restart local v17    # "tokens":[Ljava/lang/String;
    .restart local v18    # "val":Ljava/lang/String;
    :cond_5
    const-string v2, "IccProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 721
    :cond_6
    const-string v2, "number"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 722
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 724
    const-string v2, "null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 725
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "Change null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 726
    :cond_7
    const-string v5, ""

    goto/16 :goto_1

    .line 729
    :cond_8
    const-string v2, "emails"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 731
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 732
    :cond_9
    const-string v2, "pin2"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 733
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 735
    :cond_a
    const-string v2, "adn_index"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v9, v0

    goto/16 :goto_1

    .line 741
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "pair":[Ljava/lang/String;
    .end local v15    # "param":Ljava/lang/String;
    .end local v18    # "val":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x3

    if-ne v3, v2, :cond_c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 742
    const/4 v2, 0x0

    .line 760
    :goto_2
    return v2

    .line 746
    :cond_c
    if-gez v9, :cond_10

    .line 747
    if-nez v4, :cond_d

    .line 748
    const-string v4, ""

    .line 749
    :cond_d
    if-nez v5, :cond_e

    .line 750
    const-string v5, ""

    :cond_e
    move-object/from16 v2, p0

    .line 751
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v16

    .line 752
    .local v16, "success":Z
    if-nez v16, :cond_f

    .line 753
    const/4 v2, 0x0

    goto :goto_2

    .line 756
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 757
    const/4 v2, 0x1

    goto :goto_2

    .line 759
    .end local v16    # "success":Z
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 760
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v7, v8}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 338
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 28
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 357
    const/4 v11, 0x0

    .line 360
    .local v11, "pin2":Ljava/lang/String;
    const/16 v24, 0x0

    .line 361
    .local v24, "isFromContacts":Z
    const/16 v20, 0x0

    .line 365
    .local v20, "AdnExpansion":Z
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "insert"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 367
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v25

    .line 368
    .local v25, "match":I
    packed-switch v25, :pswitch_data_0

    .line 456
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot insert into URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 370
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 371
    .local v3, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 460
    .local v12, "subId":I
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 464
    .local v6, "AnrNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .line 465
    .local v7, "AnrANumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 466
    .local v8, "AnrBNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .line 467
    .local v9, "AnrCNumber":Ljava/lang/String;
    const/4 v10, 0x0

    .line 468
    .local v10, "email":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 470
    .local v22, "emails":[Ljava/lang/String;
    const-string v2, "AnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    const-string v2, "AnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 473
    :cond_1
    const-string v2, "AnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    const-string v2, "AnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 476
    :cond_2
    const-string v2, "AnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 477
    const-string v2, "AnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 479
    :cond_3
    const-string v2, "AnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    const-string v2, "AnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 482
    :cond_4
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 483
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 484
    const/4 v2, 0x0

    const-string v13, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v22, v2

    .line 485
    const/4 v2, 0x0

    aget-object v2, v22, v2

    if-nez v2, :cond_5

    .line 486
    const/4 v2, 0x0

    const-string v13, ""

    aput-object v13, v22, v2

    .line 489
    :cond_5
    if-nez v4, :cond_6

    .line 490
    const-string v4, ""

    .line 491
    :cond_6
    if-nez v5, :cond_7

    .line 492
    const-string v5, ""

    .line 493
    :cond_7
    if-nez v10, :cond_8

    .line 494
    const-string v10, ""

    .line 495
    :cond_8
    if-nez v6, :cond_9

    .line 496
    const-string v6, ""

    .line 497
    :cond_9
    if-nez v7, :cond_a

    .line 498
    const-string v7, ""

    .line 499
    :cond_a
    if-nez v8, :cond_b

    .line 500
    const-string v8, ""

    .line 501
    :cond_b
    if-nez v9, :cond_c

    .line 502
    const-string v9, ""

    .line 503
    :cond_c
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insert name : "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 506
    :cond_d
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .local v21, "buf":Ljava/lang/StringBuilder;
    if-eqz v24, :cond_f

    .line 508
    if-eqz v20, :cond_e

    .line 510
    const-string v2, "Insert AdnExpansion"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 511
    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/IccProvider;->addExpansionIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 512
    .local v23, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "After InsertExpansion, index : "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 518
    :goto_1
    packed-switch v25, :pswitch_data_1

    .line 528
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " insert ["

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "]"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    .end local v23    # "index":I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 569
    .local v26, "resultUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 576
    .end local v26    # "resultUri":Landroid/net/Uri;
    :goto_4
    return-object v26

    .line 375
    .end local v3    # "efType":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "AnrNumber":Ljava/lang/String;
    .end local v7    # "AnrANumber":Ljava/lang/String;
    .end local v8    # "AnrBNumber":Ljava/lang/String;
    .end local v9    # "AnrCNumber":Ljava/lang/String;
    .end local v10    # "email":Ljava/lang/String;
    .end local v12    # "subId":I
    .end local v21    # "buf":Ljava/lang/StringBuilder;
    .end local v22    # "emails":[Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3a

    .line 376
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 377
    .restart local v12    # "subId":I
    goto/16 :goto_0

    .line 380
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 381
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 382
    .restart local v12    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 383
    goto/16 :goto_0

    .line 386
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_4
    const/16 v3, 0x6f3b

    .line 387
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 388
    .restart local v12    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 389
    goto/16 :goto_0

    .line 393
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_5
    const/16 v3, 0x6f40

    .line 394
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 395
    .restart local v12    # "subId":I
    goto/16 :goto_0

    .line 398
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_6
    const/16 v3, 0x6f40

    .line 399
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 400
    .restart local v12    # "subId":I
    goto/16 :goto_0

    .line 403
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_7
    const/16 v3, 0x6f3a

    .line 404
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 405
    .restart local v12    # "subId":I
    const/16 v24, 0x1

    .line 406
    goto/16 :goto_0

    .line 409
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_8
    const/16 v3, 0x6f3a

    .line 410
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 411
    .restart local v12    # "subId":I
    const/16 v24, 0x1

    .line 412
    goto/16 :goto_0

    .line 415
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_9
    const/16 v3, 0x6f3b

    .line 416
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 417
    .restart local v12    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 418
    const/16 v24, 0x1

    .line 419
    goto/16 :goto_0

    .line 422
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_a
    const/16 v3, 0x6f3b

    .line 423
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 424
    .restart local v12    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 425
    const/16 v24, 0x1

    .line 426
    goto/16 :goto_0

    .line 429
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_b
    const/16 v3, 0x6f40

    .line 430
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 431
    .restart local v12    # "subId":I
    const/16 v24, 0x1

    .line 432
    goto/16 :goto_0

    .line 435
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_c
    const/16 v3, 0x6f40

    .line 436
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 437
    .restart local v12    # "subId":I
    const/16 v24, 0x1

    .line 438
    goto/16 :goto_0

    .line 441
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_d
    const/16 v3, 0x6f3a

    .line 442
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 443
    .restart local v12    # "subId":I
    const/16 v24, 0x1

    .line 444
    const/16 v20, 0x1

    .line 445
    goto/16 :goto_0

    .line 448
    .end local v3    # "efType":I
    .end local v12    # "subId":I
    :pswitch_e
    const/16 v3, 0x6f3a

    .line 449
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 450
    .restart local v12    # "subId":I
    const/16 v24, 0x1

    .line 451
    const/16 v20, 0x1

    .line 452
    goto/16 :goto_0

    .line 514
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "AnrNumber":Ljava/lang/String;
    .restart local v7    # "AnrANumber":Ljava/lang/String;
    .restart local v8    # "AnrBNumber":Ljava/lang/String;
    .restart local v9    # "AnrCNumber":Ljava/lang/String;
    .restart local v10    # "email":Ljava/lang/String;
    .restart local v21    # "buf":Ljava/lang/StringBuilder;
    .restart local v22    # "emails":[Ljava/lang/String;
    :cond_e
    const-string v2, "Insert Adn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v13, p0

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move/from16 v19, v12

    .line 515
    invoke-direct/range {v13 .. v19}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 516
    .restart local v23    # "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "After InsertAdn, index : "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 520
    :pswitch_f
    const-string v2, "insert :ADN_FROM_CONTACTS"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 521
    const-string v2, "adn/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 531
    .end local v23    # "index":I
    :cond_f
    const/16 v17, 0x0

    move-object/from16 v13, p0

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v11

    move/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v27

    .line 533
    .local v27, "success":Z
    if-nez v27, :cond_10

    .line 534
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 537
    :cond_10
    packed-switch v25, :pswitch_data_2

    .line 564
    :goto_5
    :pswitch_10
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 539
    :pswitch_11
    const-string v2, "adn/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 543
    :pswitch_12
    const-string v2, "adn/subId/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 547
    :pswitch_13
    const-string v2, "fdn/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 551
    :pswitch_14
    const-string v2, "fdn/subId/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 555
    :pswitch_15
    const-string v2, "msisdn/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 559
    :pswitch_16
    const-string v2, "msisdn/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 518
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_f
    .end packed-switch

    .line 537
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-boolean v9, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "query"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 173
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 311
    :pswitch_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 175
    :pswitch_1
    const/16 v9, 0x6f3a

    const/4 v10, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    .line 298
    :goto_0
    return-object v9

    .line 178
    :pswitch_2
    const/16 v9, 0x6f3a

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 181
    :pswitch_3
    const/16 v9, 0x6f3b

    const/4 v10, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 184
    :pswitch_4
    const/16 v9, 0x6f3b

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 187
    :pswitch_5
    const/16 v9, 0x6f49

    const/4 v10, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 190
    :pswitch_6
    const/16 v9, 0x6f49

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 193
    :pswitch_7
    const/16 v9, 0x6f3a

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 197
    :pswitch_8
    const/16 v9, 0x6f3a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/IccProvider;->loadFromEfInit(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 200
    :pswitch_9
    const/16 v9, 0x6f3a

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/IccProvider;->loadFromEfInit(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 203
    :pswitch_a
    const/16 v9, 0x6f40

    const/4 v10, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 206
    :pswitch_b
    const/16 v9, 0x6f40

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 209
    :pswitch_c
    const/16 v9, 0x6f3a

    const/4 v10, 0x1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_0

    .line 212
    :pswitch_d
    const/16 v9, 0x6f3a

    const/4 v10, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 219
    :pswitch_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 220
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 222
    :cond_1
    const-string v9, "="

    invoke-virtual {p3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "key":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "value":Ljava/lang/String;
    const-string v9, "EF_TYPE"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 227
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, "efType":I
    sparse-switch v3, :sswitch_data_0

    .line 252
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 231
    :sswitch_0
    const-string v2, "1"

    .line 232
    .local v2, "TWOG":Ljava/lang/String;
    const-string v1, "2"

    .line 233
    .local v1, "THREEG":Ljava/lang/String;
    const-string v9, "ril.ICC_TYPE"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "ADNTYPE":Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 235
    const/16 v9, 0x6f3a

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 236
    :cond_2
    const-string v9, "2"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getUSIMPBCapa()Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 239
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 243
    .end local v0    # "ADNTYPE":Ljava/lang/String;
    .end local v1    # "THREEG":Ljava/lang/String;
    .end local v2    # "TWOG":Ljava/lang/String;
    :sswitch_1
    const/16 v9, 0x6f3b

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 246
    :sswitch_2
    const/16 v9, 0x6f49

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 249
    :sswitch_3
    const/16 v9, 0x6f40

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 256
    .end local v3    # "efType":I
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 265
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :pswitch_f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 266
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 268
    :cond_5
    const-string v9, "="

    invoke-virtual {p3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 269
    .restart local v5    # "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 270
    .restart local v4    # "key":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 272
    .restart local v8    # "value":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    .line 274
    .local v7, "subId":I
    const-string v9, "EF_TYPE"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 275
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 276
    .restart local v3    # "efType":I
    sparse-switch v3, :sswitch_data_1

    .line 301
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 279
    :sswitch_4
    const-string v2, "1"

    .line 280
    .restart local v2    # "TWOG":Ljava/lang/String;
    const-string v1, "2"

    .line 281
    .restart local v1    # "THREEG":Ljava/lang/String;
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    .line 282
    .local v6, "slotId":I
    const-string v9, "ril.ICC_TYPE"

    invoke-static {v9, v6}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "ADNTYPE":Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 284
    const/16 v9, 0x6f3a

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 285
    :cond_6
    const-string v9, "2"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 286
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->getUsimPBCapaInfoForSubscriber(I)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 288
    :cond_7
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 292
    .end local v0    # "ADNTYPE":Ljava/lang/String;
    .end local v1    # "THREEG":Ljava/lang/String;
    .end local v2    # "TWOG":Ljava/lang/String;
    .end local v6    # "slotId":I
    :sswitch_5
    const/16 v9, 0x6f3b

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 295
    :sswitch_6
    const/16 v9, 0x6f49

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 298
    :sswitch_7
    const/16 v9, 0x6f40

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 305
    .end local v3    # "efType":I
    :cond_8
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 228
    :sswitch_data_0
    .sparse-switch
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_1
        0x6f40 -> :sswitch_3
        0x6f49 -> :sswitch_2
    .end sparse-switch

    .line 276
    :sswitch_data_1
    .sparse-switch
        0x6f3a -> :sswitch_4
        0x6f3b -> :sswitch_5
        0x6f40 -> :sswitch_7
        0x6f49 -> :sswitch_6
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 27
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 767
    const/4 v11, 0x0

    .line 771
    .local v11, "pin2":Ljava/lang/String;
    const/4 v10, -0x1

    .line 772
    .local v10, "index":I
    const/16 v23, 0x0

    .line 773
    .local v23, "isFromContacts":Z
    const/16 v21, 0x0

    .line 775
    .local v21, "AdnExpansion":Z
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 777
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v24

    .line 778
    .local v24, "match":I
    packed-switch v24, :pswitch_data_0

    .line 866
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot insert into URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 780
    :pswitch_1
    const/16 v2, 0x6f3a

    .line 781
    .local v2, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 870
    .local v12, "subId":I
    :goto_0
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 871
    .local v15, "tag":Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 872
    .local v16, "number":Ljava/lang/String;
    const/16 v22, 0x0

    .line 873
    .local v22, "emails":[Ljava/lang/String;
    const-string v1, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, "newTag":Ljava/lang/String;
    const-string v1, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 876
    .local v4, "newNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 877
    .local v5, "newAnrNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 878
    .local v6, "newAnrANumber":Ljava/lang/String;
    const/4 v7, 0x0

    .line 879
    .local v7, "newAnrBNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 881
    .local v8, "newAnrCNumber":Ljava/lang/String;
    const/16 v25, 0x0

    .line 883
    .local v25, "newEmails":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 885
    .local v9, "email":Ljava/lang/String;
    const-string v1, "newAnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 886
    const-string v1, "newAnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 888
    :cond_1
    const-string v1, "newAnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    const-string v1, "newAnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 891
    :cond_2
    const-string v1, "newAnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 892
    const-string v1, "newAnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 894
    :cond_3
    const-string v1, "newAnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 895
    const-string v1, "newAnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 897
    :cond_4
    const-string v1, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 898
    const-string v1, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 901
    :cond_5
    if-nez v9, :cond_6

    .line 902
    const-string v9, ""

    .line 903
    :cond_6
    if-nez v15, :cond_7

    .line 904
    const-string v15, ""

    .line 905
    :cond_7
    if-nez v16, :cond_8

    .line 906
    const-string v16, ""

    .line 907
    :cond_8
    if-nez v3, :cond_9

    .line 908
    const-string v3, ""

    .line 909
    :cond_9
    if-nez v4, :cond_a

    .line 910
    const-string v4, ""

    .line 911
    :cond_a
    if-nez v5, :cond_b

    .line 912
    const-string v5, ""

    .line 913
    :cond_b
    if-nez v6, :cond_c

    .line 914
    const-string v6, ""

    .line 915
    :cond_c
    if-nez v7, :cond_d

    .line 916
    const-string v7, ""

    .line 917
    :cond_d
    if-nez v8, :cond_e

    .line 918
    const-string v8, ""

    .line 920
    :cond_e
    const-string v1, "adn_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 921
    const-string v1, "adn_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 924
    :cond_f
    if-eqz v23, :cond_11

    .line 925
    const-string v1, "isFromContacts"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 926
    if-eqz v21, :cond_10

    move-object/from16 v1, p0

    .line 927
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/telephony/IccProvider;->updateExpansionIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I

    move-result v10

    .line 934
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "number":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v1, v10

    .line 946
    :goto_2
    return v1

    .line 785
    .end local v2    # "efType":I
    .end local v3    # "newTag":Ljava/lang/String;
    .end local v4    # "newNumber":Ljava/lang/String;
    .end local v5    # "newAnrNumber":Ljava/lang/String;
    .end local v6    # "newAnrANumber":Ljava/lang/String;
    .end local v7    # "newAnrBNumber":Ljava/lang/String;
    .end local v8    # "newAnrCNumber":Ljava/lang/String;
    .end local v9    # "email":Ljava/lang/String;
    .end local v12    # "subId":I
    .end local v22    # "emails":[Ljava/lang/String;
    .end local v25    # "newEmails":[Ljava/lang/String;
    :pswitch_2
    const/16 v2, 0x6f3a

    .line 786
    .restart local v2    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 787
    .restart local v12    # "subId":I
    goto/16 :goto_0

    .line 790
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_3
    const/16 v2, 0x6f3b

    .line 791
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 792
    .restart local v12    # "subId":I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 793
    goto/16 :goto_0

    .line 796
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_4
    const/16 v2, 0x6f3b

    .line 797
    .restart local v2    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 798
    .restart local v12    # "subId":I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 799
    goto/16 :goto_0

    .line 803
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_5
    const/16 v2, 0x6f40

    .line 804
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 805
    .restart local v12    # "subId":I
    goto/16 :goto_0

    .line 808
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_6
    const/16 v2, 0x6f40

    .line 809
    .restart local v2    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 810
    .restart local v12    # "subId":I
    goto/16 :goto_0

    .line 813
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_7
    const/16 v2, 0x6f3a

    .line 814
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 815
    .restart local v12    # "subId":I
    const/16 v23, 0x1

    .line 816
    goto/16 :goto_0

    .line 819
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_8
    const/16 v2, 0x6f3a

    .line 820
    .restart local v2    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 821
    .restart local v12    # "subId":I
    const/16 v23, 0x1

    .line 822
    goto/16 :goto_0

    .line 825
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_9
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 826
    const/16 v2, 0x6f3b

    .line 827
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 828
    .restart local v12    # "subId":I
    const/16 v23, 0x1

    .line 829
    goto/16 :goto_0

    .line 832
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_a
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 833
    const/16 v2, 0x6f3b

    .line 834
    .restart local v2    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 835
    .restart local v12    # "subId":I
    const/16 v23, 0x1

    .line 836
    goto/16 :goto_0

    .line 839
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_b
    const/16 v2, 0x6f40

    .line 840
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 841
    .restart local v12    # "subId":I
    const/16 v23, 0x1

    .line 842
    goto/16 :goto_0

    .line 845
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_c
    const/16 v2, 0x6f40

    .line 846
    .restart local v2    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 847
    .restart local v12    # "subId":I
    const/16 v23, 0x1

    .line 848
    goto/16 :goto_0

    .line 851
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_d
    const/16 v2, 0x6f3a

    .line 852
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v12

    .line 853
    .restart local v12    # "subId":I
    const/16 v23, 0x1

    .line 854
    const/16 v21, 0x1

    .line 855
    goto/16 :goto_0

    .line 858
    .end local v2    # "efType":I
    .end local v12    # "subId":I
    :pswitch_e
    const/16 v2, 0x6f3a

    .line 859
    .restart local v2    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v12

    .line 860
    .restart local v12    # "subId":I
    const/16 v23, 0x1

    .line 861
    const/16 v21, 0x1

    .line 862
    goto/16 :goto_0

    .restart local v3    # "newTag":Ljava/lang/String;
    .restart local v4    # "newNumber":Ljava/lang/String;
    .restart local v5    # "newAnrNumber":Ljava/lang/String;
    .restart local v6    # "newAnrANumber":Ljava/lang/String;
    .restart local v7    # "newAnrBNumber":Ljava/lang/String;
    .restart local v8    # "newAnrCNumber":Ljava/lang/String;
    .restart local v9    # "email":Ljava/lang/String;
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v16    # "number":Ljava/lang/String;
    .restart local v22    # "emails":[Ljava/lang/String;
    .restart local v25    # "newEmails":[Ljava/lang/String;
    :cond_10
    move-object/from16 v13, p0

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v19, v11

    move/from16 v20, v12

    .line 930
    invoke-direct/range {v13 .. v20}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I

    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "number":Ljava/lang/String;
    move-result v10

    goto/16 :goto_1

    .line 937
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v16    # "number":Ljava/lang/String;
    :cond_11
    const-string v1, "Update Adn"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v13, p0

    move v14, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    move/from16 v20, v12

    .line 938
    invoke-direct/range {v13 .. v20}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v26

    .line 941
    .local v26, "success":Z
    if-nez v26, :cond_12

    .line 942
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 945
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 946
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
