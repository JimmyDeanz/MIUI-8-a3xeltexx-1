.class Landroid/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 1185
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Spinner;Landroid/widget/Spinner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Spinner;
    .param p2, "x1"    # Landroid/widget/Spinner$1;

    .prologue
    .line 1185
    invoke-direct {p0, p1}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 1195
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 1264
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 1259
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1230
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1231
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    iget-object v0, v0, Landroid/widget/Spinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1234
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner$DialogPopup;->dismiss()V

    .line 1235
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1202
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1203
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1239
    const-string v0, "Spinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 1273
    const-string v0, "Spinner"

    const-string v1, "Cannot set DropDown Height for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    .line 1249
    const-string v0, "Spinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1206
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 1207
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    .line 1244
    const-string v0, "Spinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return-void
.end method

.method public show(II)V
    .locals 4
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 1214
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    .line 1227
    :goto_0
    return-void

    .line 1217
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1218
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1219
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1221
    :cond_1
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 1223
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1224
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1225
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1226
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
