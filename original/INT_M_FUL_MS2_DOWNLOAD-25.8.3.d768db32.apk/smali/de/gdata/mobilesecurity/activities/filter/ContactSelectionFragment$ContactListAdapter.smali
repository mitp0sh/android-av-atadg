.class public Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 463
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    .line 464
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 465
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->b:Landroid/view/LayoutInflater;

    .line 466
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const v4, 0x7f0b0151

    .line 489
    if-nez p2, :cond_0

    .line 490
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030067

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 494
    :cond_0
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 496
    const v1, 0x7f0b0153

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    const v1, 0x7f0b0154

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 500
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 502
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 504
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 505
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/c;

    invoke-direct {v2, p0, v1, v0}, Lde/gdata/mobilesecurity/activities/filter/c;-><init>(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;Landroid/widget/CheckBox;Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 529
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 530
    const v1, 0x7f0b0152

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 531
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 536
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    iget v0, v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->loadImages(I)V

    .line 538
    :cond_1
    const v0, 0x7f0b0241

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    return-object p2

    .line 534
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020112

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->clear()V

    .line 470
    if-eqz p1, :cond_0

    .line 471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 472
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 475
    :cond_0
    return-void
.end method
