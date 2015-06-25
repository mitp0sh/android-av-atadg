.class Lde/gdata/mobilesecurity/activities/filter/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;III)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/a;->d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/filter/a;->a:I

    iput p3, p0, Lde/gdata/mobilesecurity/activities/filter/a;->b:I

    iput p4, p0, Lde/gdata/mobilesecurity/activities/filter/a;->c:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 252
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->a:I

    iget v1, p0, Lde/gdata/mobilesecurity/activities/filter/a;->b:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->a:I

    move v1, v0

    :goto_0
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->b:I

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->b(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)I

    move-result v0

    iget v2, p0, Lde/gdata/mobilesecurity/activities/filter/a;->c:I

    if-ne v0, v2, :cond_1

    .line 254
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v2, p0, Lde/gdata/mobilesecurity/activities/filter/a;->a:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    const v2, 0x7f0b0154

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/a;->d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->loadImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 262
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/a;->d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 267
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->b:I

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 270
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 275
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->a:I

    iget v1, p0, Lde/gdata/mobilesecurity/activities/filter/a;->b:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->a:I

    move v2, v0

    :goto_0
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->b:I

    if-gt v2, v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->b(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)I

    move-result v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/filter/a;->c:I

    if-ne v0, v1, :cond_1

    .line 277
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/filter/a;->a:I

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_0

    .line 280
    const v0, 0x7f0b0152

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 281
    const v3, 0x7f0b0154

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 283
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 284
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/a;->d:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 286
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 291
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/a;->b:I

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 295
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 247
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/a;->a(Ljava/lang/Void;)V

    return-void
.end method
