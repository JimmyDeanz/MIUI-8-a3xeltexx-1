.class public Lcom/samsung/android/cocktailbar/Cocktail;
.super Ljava/lang/Object;
.source "Cocktail.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_DISABLE:I = 0x2

.field public static final STATE_ENABLE:I = 0x1

.field public static final STATE_NONE:I


# instance fields
.field private mBroadcast:Landroid/app/PendingIntent;

.field private mCocktailId:I

.field private mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

.field private mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

.field private mState:I

.field private mUid:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/samsung/android/cocktailbar/Cocktail$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/Cocktail$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/Cocktail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 0
    .param p1, "cocktailId"    # I
    .param p2, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    return-void
.end method

.method public static getUpdateIntentName(I)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    goto :goto_0

    :pswitch_1
    const-string v0, "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 0
    .param p1, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CocktailId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "dumpResult":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has broadcast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/CocktailInfo;->dump()Ljava/lang/String;

    move-result-object v0

    .local v0, "cocktailInfoDump":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "cocktailInfoDump":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBroadcast()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getCocktailId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    return v0
.end method

.method public getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    return-object v0
.end method

.method public getProvider()Landroid/content/ComponentName;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    iget-object v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    return v0
.end method

.method public getUpdateIntentName()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    const-class v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    return-void
.end method

.method public setBroadcast(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "broadcast"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    return-void
.end method

.method public setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V
    .locals 0
    .param p1, "providerInfo"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    return-void
.end method

.method public updateCocktailContentView(Landroid/widget/RemoteViews;Z)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "isPartialUpdate"    # Z

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo;->updateContentView(Landroid/widget/RemoteViews;Z)V

    :cond_0
    return-void
.end method

.method public updateCocktailHelpView(Landroid/widget/RemoteViews;Z)V
    .locals 1
    .param p1, "helpView"    # Landroid/widget/RemoteViews;
    .param p2, "isPartialUpdate"    # Z

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo;->updateHelpView(Landroid/widget/RemoteViews;Z)V

    :cond_0
    return-void
.end method

.method public updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 1
    .param p1, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->mergeInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
