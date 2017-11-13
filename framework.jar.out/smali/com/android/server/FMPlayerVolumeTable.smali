.class public Lcom/android/server/FMPlayerVolumeTable;
.super Ljava/lang/Object;
.source "FMPlayerVolumeTable.java"


# static fields
.field private static mDefaultVolumeTable:Ljava/lang/String;

.field private static mVolumeTable:[I

.field private static mVolumeTable_A8:Ljava/lang/String;

.field private static mVolumeTable_J2:Ljava/lang/String;

.field private static mVolumeTable_Kanas:Ljava/lang/String;

.field private static mVolumeTable_TSPR:Ljava/lang/String;

.field private static mVolumeTable_Vivalto3g3M:Ljava/lang/String;

.field private static mVolumeTable_Young2:Ljava/lang/String;


# instance fields
.field private VolumePropertyname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "0,2,3,4,5,7,10,14,18,25,34,45,61,82,111,150"

    sput-object v0, Lcom/android/server/FMPlayerVolumeTable;->mDefaultVolumeTable:Ljava/lang/String;

    .line 11
    const-string v0, "0,2,3,4,5,7,10,14,18,25,34,45,61,101,170,220"

    sput-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_Kanas:Ljava/lang/String;

    .line 12
    const-string v0, "0,1,2,3,5,7,10,14,18,25,34,45,61,82,111,153"

    sput-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_Young2:Ljava/lang/String;

    .line 13
    const-string v0, "0,2,3,4,5,7,10,14,18,25,34,44,56,71,88,111"

    sput-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_Vivalto3g3M:Ljava/lang/String;

    .line 14
    const-string v0, "0,4,5,7,10,14,18,30,45,65,85,100,130,160,190,240"

    sput-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_TSPR:Ljava/lang/String;

    .line 15
    const-string v0, "0,1,2,3,4,6,9,16,22,30,42,60,85,115,170,225"

    sput-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_A8:Ljava/lang/String;

    .line 16
    const-string v0, "0,2,5,9,14,25,37,50,65,80,100,120,140,165,195,240"

    sput-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_J2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v3, "service.brcm.fm.volumetable"

    iput-object v3, p0, Lcom/android/server/FMPlayerVolumeTable;->VolumePropertyname:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/android/server/FMPlayerVolumeTable;->getPropertyVolumeTable()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "testVol":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 23
    const-string v2, "0,6,9,12,16,21,26,34,40,47,80,105,135,170,210,254"

    .line 24
    .local v2, "volumeFromFeature":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 25
    invoke-direct {p0, v2, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    .line 51
    .end local v2    # "volumeFromFeature":Ljava/lang/String;
    :goto_0
    return-void

    .line 29
    .restart local v2    # "volumeFromFeature":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/FMPlayerVolumeTable;->getPropertyModel()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "model":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    sget-object v3, Lcom/android/server/FMPlayerVolumeTable;->mDefaultVolumeTable:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 33
    :cond_1
    const-string v3, "SM-G355H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SM-G355M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    :cond_2
    sget-object v3, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_Kanas:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 35
    :cond_3
    const-string v3, "SM-G130H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "SM-G130M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "SM-G130E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "SM-G130U"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 36
    :cond_4
    sget-object v3, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_Young2:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 37
    :cond_5
    const-string v3, "SM-G313H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "SM-G313ML"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "SM-G313U"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const-string v3, "SM-G313HN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "SM-G313HU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "SM-G313M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 38
    sget-object v3, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_Vivalto3g3M:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 39
    :cond_7
    const-string v3, "SM-N910P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "SM-N915P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 40
    :cond_8
    sget-object v3, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_TSPR:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 41
    :cond_9
    const-string v3, "SM-A800"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 42
    sget-object v3, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_A8:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 43
    :cond_a
    const-string v3, "SM-J200"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 44
    sget-object v3, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable_J2:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 46
    :cond_b
    sget-object v3, Lcom/android/server/FMPlayerVolumeTable;->mDefaultVolumeTable:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 49
    .end local v0    # "model":Ljava/lang/String;
    .end local v2    # "volumeFromFeature":Ljava/lang/String;
    :cond_c
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private WriteVolumeTable(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "hasProperty"    # Z

    .prologue
    const/16 v5, 0x10

    .line 66
    if-nez p2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/server/FMPlayerVolumeTable;->VolumePropertyname:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "volume_table":[Ljava/lang/String;
    array-length v2, v1

    if-eq v2, v5, :cond_2

    .line 80
    :cond_1
    return-void

    .line 76
    :cond_2
    new-array v2, v5, [I

    sput-object v2, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable:[I

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 78
    sget-object v2, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable:[I

    aget-object v3, v1, v0

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPropertyModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "model":Ljava/lang/String;
    const-string/jumbo v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method private getPropertyVolumeTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "VolumeTable":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/FMPlayerVolumeTable;->VolumePropertyname:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    return-object v0
.end method


# virtual methods
.method public ReadVolume(I)I
    .locals 1
    .param p1, "vol"    # I

    .prologue
    .line 83
    sget-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable:[I

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable:[I

    aget v0, v0, p1

    goto :goto_0
.end method
