.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Lcom/android/server/am/ActivityRecord;

.field allIntents:[Landroid/content/Intent;

.field allResolvedTypes:[Ljava/lang/String;

.field final flags:I

.field grabTime:J

.field final hashCode:I

.field final options:Landroid/os/Bundle;

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V
    .locals 3
    .param p1, "_t"    # I
    .param p2, "_p"    # Ljava/lang/String;
    .param p3, "_a"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "_w"    # Ljava/lang/String;
    .param p5, "_r"    # I
    .param p6, "_i"    # [Landroid/content/Intent;
    .param p7, "_it"    # [Ljava/lang/String;
    .param p8, "_f"    # I
    .param p9, "_o"    # Landroid/os/Bundle;
    .param p10, "_userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 82
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    .line 84
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 85
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 86
    if-eqz p6, :cond_5

    array-length v1, p6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p6, v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 87
    if-eqz p7, :cond_0

    array-length v1, p7

    add-int/lit8 v1, v1, -0x1

    aget-object v2, p7, v1

    :cond_0
    iput-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 89
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 90
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 91
    iput-object p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    .line 92
    iput p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 94
    const/16 v0, 0x17

    .line 95
    .local v0, "hash":I
    add-int/lit16 v0, p8, 0x353

    .line 96
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p5

    .line 97
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p10

    .line 98
    if-eqz p4, :cond_1

    .line 99
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 101
    :cond_1
    if-eqz p3, :cond_2

    .line 102
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 105
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->filterHashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 108
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 110
    :cond_4
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 111
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p1

    .line 112
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 115
    return-void

    .end local v0    # "hash":I
    :cond_5
    move-object v1, v2

    .line 86
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 128
    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v3

    .line 132
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/PendingIntentRecord$Key;

    move-object v2, v0

    .line 133
    .local v2, "other":Lcom/android/server/am/PendingIntentRecord$Key;
    iget v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v4, v5, :cond_0

    .line 136
    iget v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-ne v4, v5, :cond_0

    .line 139
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, v5, :cond_0

    .line 145
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eq v4, v5, :cond_2

    .line 146
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 147
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    :cond_2
    iget v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-ne v4, v5, :cond_0

    .line 157
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v4, v5, :cond_3

    .line 158
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 159
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eq v4, v5, :cond_4

    .line 167
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 168
    iget-object v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    :cond_4
    iget v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget v5, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    if-ne v4, v5, :cond_0

    .line 179
    iget-wide v4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->grabTime:J

    iget-wide v6, v2, Lcom/android/server/am/PendingIntentRecord$Key;->grabTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 183
    const/4 v3, 0x1

    goto :goto_0

    .line 150
    :cond_5
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v4, :cond_2

    goto :goto_0

    .line 162
    :cond_6
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    goto :goto_0

    .line 171
    :cond_7
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_4

    goto/16 :goto_0

    .line 184
    .end local v2    # "other":Lcom/android/server/am/PendingIntentRecord$Key;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->grabTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->grabTime:J

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<null>"

    goto :goto_0
.end method

.method typeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v0, :pswitch_data_0

    .line 212
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    const-string/jumbo v0, "startActivity"

    goto :goto_0

    .line 206
    :pswitch_1
    const-string v0, "broadcastIntent"

    goto :goto_0

    .line 208
    :pswitch_2
    const-string/jumbo v0, "startService"

    goto :goto_0

    .line 210
    :pswitch_3
    const-string v0, "activityResult"

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
