.class Lcom/android/server/pm/PreferredActivity;
.super Landroid/content/IntentFilter;
.source "PreferredActivity.java"

# interfaces
.implements Lcom/android/server/pm/PreferredComponent$Callbacks;


# static fields
.field private static final DEBUG_FILTERS:Z = false

.field private static final TAG:Ljava/lang/String; = "PreferredActivity"


# instance fields
.field final mPref:Lcom/android/server/pm/PreferredComponent;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "always"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 41
    new-instance v0, Lcom/android/server/pm/PreferredComponent;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    iput-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 42
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/pm/PreferredComponent;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 46
    return-void
.end method


# virtual methods
.method public onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PreferredActivity;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 71
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <preferred-activities>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 69
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferredActivity{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v1, v1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PreferredComponent;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 50
    const-string/jumbo v0, "filter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    invoke-super {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 52
    const-string/jumbo v0, "filter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    return-void
.end method
